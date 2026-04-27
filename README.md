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

The hang is **intermittent**. When I last reproduced it, the pattern
was:

1. Generate this directory fresh from `space_gen`.
2. `dart pub get` — succeeds.
3. `dart format .` — succeeds (~2s).
4. `dart fix . --apply` — succeeds (~30s).
5. Trigger any subsequent `dart fix . --apply` (with the spec
   re-generated, or even just rerunning the command). Sometimes it
   hangs at 0% CPU after the analysis server starts. At that point
   the only recovery is to kill the process tree and `rm -rf
   ~/.dartServer`.

Reproduction steps in this snapshot:

```sh
git clone https://github.com/eseidel/dart-fix-hang-repro
cd dart-fix-hang-repro
dart pub get
dart fix . --apply         # may complete or hang; see notes below
```

If the first run completes, run it again. The hang reproduces more
reliably on the **second or third** invocation against an existing
`~/.dartServer` cache.

To force the deterministic crash mode, run several `dart fix . --apply`
sessions in parallel against the same directory (e.g. by accidentally
spawning two regen jobs in different terminals). One of the crashes
will leave `~/.dartServer` in a state where the next `dart fix` reads
back a corrupted `LibraryDiagnosticsBundle` and throws the `RangeError`
above.

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
