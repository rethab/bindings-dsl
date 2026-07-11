# bindings-dsl

Full documentation is on the [wiki](https://github.com/rethab/bindings-dsl/wiki).

## Haddock

A `-- |` comment placed above a macro invocation is picked up by Haddock and
documents the declarations the macro generates:

```haskell
-- | The maximum length of a name.
#num NAME_MAX

-- | Opens a file.
#ccall open , CString -> CInt -> IO CInt
```

This works for `#num`, `#fractional`, `#pointer`, `#function_pointer`,
`#num_pattern`, `#fractional_pattern`, `#ccall`, `#cinline`, `#globalvar`,
`#opaque_t`, `#integral_t`, `#synonym_t`, `#callback_t` and `#starttype`.

Two things cannot be documented this way:

* the record fields of a `#starttype` block, and
* the `p'`-prefixed pointer that `#ccall` generates alongside the function —
  the comment attaches to the function only.

If your `Bindings.*` modules are an implementation detail that you re-export
from a public module, add

```haskell
{-# OPTIONS_HADDOCK not-home #-}
```

to them, and make sure every type appearing in your public API is either
re-exported from a module Haddock processes or exposed in `exposed-modules`.
Types that only ever live in `other-modules` have no page to link to, which is
what produces Haddock's *"could not find link destinations for ..."* warning.

## Change log

Unreleased

* Emit the type signature before the value in #num, #fractional, #pointer and
  #function_pointer, so that a Haddock comment written above the macro
  attaches to the declaration Haddock documents.

* bindings-gpgme: hide the trust item API when building against gpgme 2.0,
  which removed it (deprecated since 1.14), so the binding compiles against
  both the 1.x and 2.x series.

* bindings-gpgme: add the ECC, ECDSA, ECDH and EDDSA public key algorithm
  constants, and gpgme_op_delete_ext.

* bindings-hdf5: hide H5D_MPIO_FILTERS on HDF5 1.10 and later, which removed
  it.

* Replace Travis with GitHub Actions, building bindings-DSL and bindings-posix
  across GHC 9.6 to 9.12, and bindings-gpgme against the latest gpgme 1.x and
  2.x.

Changes in 1.0.25

* No changes to the DSL itself. bindings-posix stopped assuming that OS X
  provides everything POSIX asks for.

Changes in 1.0.24

* Add #num_pattern and #fractional_pattern, for matching numeric constants in
  patterns.

* Support interruptible calls with #ccall_interruptible.

* Silence GHC warnings for Storable instances of field-less types, printf
  format warnings, and shadowed temporary variables.

Changes in 1.0.23

* No changes to the DSL itself. bindings-posix gained bindings for message
  queues.

Changes in 1.0.22

* No changes to the DSL itself. bindings-gpgme gained pinentry modes, I/O
  wrappers and the subkey curve field; bindings-hdf5 gained its low level
  interface.

Changes in 1.0.21

* No changes to the DSL itself. Maintainership passed to John Wiegley.

Changes in 1.0.20

* Include <cinttypes> instead of <inttypes.h> under a C++ compiler, which
  otherwise lacks PRIuMAX and PRIdMAX and fails to expand the macros. Note
  that this requires building the user library with -std=c++11.

Changes in 1.0.19

* Add a change log.

* Support unsafe calls with experimental #ccall_unsafe.

Changes in 1.0.18 (This version has a bug. Marked as such in Hackage)

* Introduce a silly bug to solve a problem that does not exist.

Changes in 1.0.17

* Add Bindings.Utilities module for general utilities.

* Change repository to git.

* Don't underestimate size of field arrays with dimension >= 2.

* Change #callback to #callback_t.

* Keep source of bindings-* libraries with bindings-DSL.

* Add examples used in tutorial.

Changes in 1.0.16

* Use correct value for Storable alignment instead of copying sizeOf.

Changes in 1.0.15

* New hsc2hs template doesn't include some headers, so include it ourselves.

Changes in 1.0.14

* Add functions to get pointers to fields from pointers to structures.
