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
should report ~17,000 fixes in ~1,200 files. That's the stage of the
pipeline where I've seen the hang and the crash.

```sh
git clone https://github.com/eseidel/dart-fix-hang-repro
cd dart-fix-hang-repro
dart pub get
dart fix . --apply
```

Outcomes I've observed (all on Dart SDK 3.11.5, macOS 26.3 ARM64):

- **Clean success.** ~30s, "17047 fixes made in 1267 files." Most
  common when `~/.dartServer` is empty.
- **Clean compute, no exit.** `dart fix` reports the fixes, but the
  process never terminates — analysis-server child sits at 0% CPU
  with every thread parked in `__psynch_cvwait` / `kevent`. See
  [`sample-hung-analyzer.txt`](sample-hung-analyzer.txt) for a
  capture from one occurrence. Recovery: kill + `rm -rf
  ~/.dartServer`.
- **Crash.** Analysis server throws `RangeError ... in
  ManifestIdTableBuilder.readTable` while reading a
  `LibraryDiagnosticsBundle` from `~/.dartServer`'s
  on-disk cache. Stack trace:

  ```
  Internal error: Failed to handle request: edit.bulkFixes
  RangeError (length): Invalid value: Not in inclusive range 0..1628: 5969437
  ManifestIdTableBuilder.readTable
  BinaryReader._initManifestIdTableAt
  LibraryDiagnosticsBundle.fromBytes
  ```

  The two failure modes seem related — running multiple
  `dart fix . --apply` against the same directory in parallel
  (which I did by accident) reliably leaves the cache in a state
  where the next single `dart fix` crashes with the RangeError.
  After a few crash-recover cycles the hang variant takes over.

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
