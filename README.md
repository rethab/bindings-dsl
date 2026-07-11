# bindings-dsl

Unreleased

* Add #array2d_field for members like char x[8][255], which #array_field
  miscompiled: it divided the member size by sizeOf (Ptr CChar) and produced
  255 rows instead of 8. Declare the type as the row pointer (Ptr CChar);
  peek returns pointers into the struct, poke memmoves each row back.

* #array_field and #union_array_field element counts are now baked in from C
  (sizeof member / sizeof member[0]) instead of dividing by the declared
  Haskell type's sizeOf at runtime. Beware: if your declared type's sizeOf
  does not match the C element size, the count changes. The old code never
  read past the member; the new code reads count * sizeOf bytes and will
  overrun it if the declared type is too big. Correctly declared bindings
  generate identical code.

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
