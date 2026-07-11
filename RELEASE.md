# Releasing

## 1. PR: bump the version

- bindings-DSL → `bindings-DSL.cabal` (repo root)
- anything else → `<pkg>/<pkg>.cabal`
- PVP, per package. Versions are independent — do not align them across packages.

bindings-DSL major/minor changed? Its bound is `< X.Y` in all ten dependents:

- widen to `bindings-DSL >= ... && < X.Y+1` in each
- bump each of those packages too — otherwise the widened bound never reaches
  Hackage and the published versions stay uninstallable against the new DSL

CI's **Publishable** job runs `cabal check` + `cabal sdist` on all eleven
packages. Red = not releasable, and it blocks the merge. Nothing to run locally.

## 2. Merge

## 3. Tag and push

```sh
git tag bindings-DSL-1.1.0
git push origin bindings-DSL-1.1.0
```

`<pkg>-<version>`. Bare version tags are ambiguous across eleven packages.

Releasing bindings-DSL alongside dependents? **bindings-DSL first** — the
others' bounds need a version that already exists on Hackage.

## 4. Review the candidate

Workflow asserts tag version == cabal version, packages, uploads as candidate.

`hackage.haskell.org/package/<pkg>-<version>/candidate` — description, modules,
dependency bounds.

## 5. Publish

Actions → Release → *Run workflow* → tag, `publish: true`. Or publish from the
candidate page.

---

- Hackage takes a version **once**. No delete, no overwrite. Botched publish →
  bump patch, go forward.
- Docs not uploaded. Hackage builds haddocks itself; doing it in CI would mean
  installing every C library these bindings wrap.
- Needs the `HACKAGE_AUTH_TOKEN` repo secret (Hackage account management page).
