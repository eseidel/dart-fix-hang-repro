# dart-fix-hang-repro

Intermittent hang/freeze reproduction for `dart fix --apply` against
this Dart package.

## What

This is a snapshot of generated code (~1940 `.dart` files, all
`@immutable` model classes plus a few API client files) where
`dart fix --apply` sometimes hangs the analysis server indefinitely.
When it hangs, every thread of the analysis server sits in
`__psynch_cvwait` / `kevent` (see
[`sample-hung-analyzer.txt`](sample-hung-analyzer.txt) for a full
`sample(1)` capture of the hung process).

Earlier, against the same content but with a corrupted `~/.dartServer`
cache, `dart fix` would crash deterministically with:

```
Internal error: Failed to handle request: edit.bulkFixes
RangeError (length): Invalid value: Not in inclusive range 0..1628: 5969437
ManifestIdTableBuilder.readTable
BinaryReader._initManifestIdTableAt
LibraryDiagnosticsBundle.fromBytes
```

After clearing `~/.dartServer`, the crash mode goes away but the
hang mode persists intermittently.

## Environment

- Dart SDK 3.11.5 (stable, 2026-04-15) on macOS 26.3 (ARM64)
- The generated code is the output of [`space_gen`][space_gen]
  against [github's OpenAPI spec][github-spec].

[space_gen]: https://github.com/eseidel/space_gen
[github-spec]: https://github.com/github/rest-api-description

## Reproducing

The lib/ in this repo is captured **pre-fix** — straight after
`dart format` runs, before `dart fix --apply` has had a chance to
strip unused imports and apply lint fixes. A run of `dart fix`
reports ~17,000 fixes in ~1,200 files in ~20-30s on a clean
`~/.dartServer`.

```sh
git clone https://github.com/eseidel/dart-fix-hang-repro
cd dart-fix-hang-repro
dart pub get
dart fix . --apply
```

**Heads-up: in standalone testing I have not been able to reliably
reproduce the hang from this repo on Dart 3.11.5.** Multiple back-to-
back runs and parallel runs all complete cleanly. The failure modes
documented below were observed earlier, in the wild, while this
content was being driven through `dart fix` from inside the
[`space_gen`][space_gen] generator pipeline (which runs `dart pub
get` → `dart format` → `dart fix --apply` → `dart format` against a
freshly-emitted output directory). I'm posting the snapshot in case
the SDK team can spot the failure shape without a live repro; if
you'd like a live repro I'm happy to keep instrumenting and report
back.

Outcomes I observed live (all on Dart SDK 3.11.5, macOS 26.3 ARM64):

- **Clean compute, no exit.** `dart fix` finishes computing — the
  applied-fixes count gets logged — but the process never
  terminates. The analysis-server child sits at 0% CPU with every
  thread parked in `__psynch_cvwait` / `kevent`. See
  [`sample-hung-analyzer.txt`](sample-hung-analyzer.txt) for a
  full `sample(1)` capture from one occurrence. Recovery: kill the
  process tree and `rm -rf ~/.dartServer`.
- **Crash.** Analysis server throws `RangeError ... in
  ManifestIdTableBuilder.readTable` while reading a
  `LibraryDiagnosticsBundle` from `~/.dartServer`'s on-disk cache:

  ```
  Internal error: Failed to handle request: edit.bulkFixes
  RangeError (length): Invalid value: Not in inclusive range 0..1628: 5969437
  ManifestIdTableBuilder.readTable
  BinaryReader._initManifestIdTableAt
  LibraryDiagnosticsBundle.fromBytes
  ```

  Triggered most reliably by accidentally running multiple
  `dart fix . --apply` sessions against the same directory in
  parallel. Once the cache is in this state, even single subsequent
  `dart fix` runs throw the RangeError until `~/.dartServer` is
  cleared.

[space_gen]: https://github.com/eseidel/space_gen

## Recovery when it hangs / crashes

```sh
pkill -9 -f "dart fix"
pkill -9 -f "analysis_server_aot"
rm -rf ~/.dartServer
```

## Notes for the SDK team

- The hung sample (`sample-hung-analyzer.txt`) shows every thread
  parked in `__psynch_cvwait` or `kevent`, suggesting deadlock in
  request handling rather than a busy loop.
- The crash variant strongly suggests a corrupted on-disk
  `LibraryDiagnosticsBundle` cache (`ManifestIdTableBuilder.readTable`
  reads a trailer offset of 5969437 from a buffer of length 1628).
  My guess is interrupted `dart fix` sessions write partial bundle
  files; the next session reads them and either crashes or wedges
  trying to recover.
- I haven't found a deterministic standalone-repro; this snapshot is
  the smallest concrete payload I've been able to attach to the
  symptom.
