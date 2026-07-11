# Releasing

Eleven independently versioned packages. Release one, some, or all — each has
its own version, its own tag, its own Hackage upload.

Hackage takes a source tarball, not build artifacts. A version uploads **once**:
no delete, no overwrite. Hence candidate first, publish second.

## Prerequisites

- Hackage account, maintainer rights on the package
- `HACKAGE_AUTH_TOKEN` repo secret — Hackage account management page → auth token

## Per release

1. **Pick the version** — PVP, per package. Do not align versions across
   packages; their numbers mean something to their own consumers.
   - bindings-DSL: `bindings-DSL.cabal` (repo root)
   - others: `<pkg>/<pkg>.cabal`

2. **Bump `version:`** in that cabal file.

3. **If bindings-DSL's major/minor changed** — its bound is `< X.Y` in every
   dependent package:
   - widen `bindings-DSL >= ... && < X.Y+1` in all ten
   - bump each of those packages too, else the new bound never reaches Hackage
     and the old published versions stay uninstallable against the new DSL

4. **Changelog** — `README.md`, `## Changelog`: rename `Unreleased` →
   `Changes in <version>`. bindings-DSL versions head the sections; note
   sub-package changes as bullets under them.

5. **`source-repository this`** in `bindings-DSL.cabal`: set `tag:` to the new
   tag (only when releasing bindings-DSL).

6. **Verify**, per package released:
   ```sh
   cd <pkg> && cabal check          # must be clean; Hackage rejects otherwise
   ```

7. **Merge to master**, CI green.

8. **Tag and push** — `<pkg>-<version>`, e.g. `bindings-DSL-1.1.0`. Bare version
   tags are ambiguous with eleven packages.
   ```sh
   git tag bindings-DSL-1.1.0
   git push origin bindings-DSL-1.1.0
   ```
   Releasing bindings-DSL alongside dependents? **bindings-DSL first** — the
   others' bounds require a version that must already exist on Hackage.

9. **Workflow runs** (`.github/workflows/release.yml`): asserts tag version ==
   cabal version, `cabal check`, sdist, uploads as **candidate**.

10. **Review the candidate** — `hackage.haskell.org/package/<pkg>-<version>/candidate`.
    Check rendered description, module list, dependency bounds.

11. **Publish** — Actions → Release → *Run workflow* → tag, `publish: true`.
    Or press publish on the candidate page.

## Notes

- Docs: not uploaded. Hackage builds haddocks itself; building them in CI would
  mean installing every C library these bindings wrap.
- Tag/cabal mismatch fails the workflow before anything uploads.
- Botched publish: no undo. Bump patch and go forward.
