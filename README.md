# bindings-dsl

## Building bindings-gpgme on macOS with Homebrew

`gpgme.h` includes `<gpg-error.h>`, and Homebrew ships `libgpg-error` as a keg of
its own, so both prefixes have to be on the include and library paths. Passing
only gpgme's prefix leaves the nested include unresolved and the build fails with
a misleading complaint about a missing `gpgme.h`.

```sh
brew install gpgme libgpg-error

cabal build bindings-gpgme \
  --extra-include-dirs="$(brew --prefix gpgme)/include" \
  --extra-include-dirs="$(brew --prefix libgpg-error)/include" \
  --extra-lib-dirs="$(brew --prefix gpgme)/lib" \
  --extra-lib-dirs="$(brew --prefix libgpg-error)/lib"
```

With stack, list both prefixes in `stack.yaml` (`brew --prefix` is
`/opt/homebrew` on Apple silicon and `/usr/local` on Intel):

```yaml
extra-include-dirs:
  - /opt/homebrew/opt/gpgme/include
  - /opt/homebrew/opt/libgpg-error/include
extra-lib-dirs:
  - /opt/homebrew/opt/gpgme/lib
  - /opt/homebrew/opt/libgpg-error/lib
```

## Cross compilation

bindings-DSL does not work with `hsc2hs --cross-compile` (see
[#38](https://github.com/rethab/bindings-dsl/issues/38)). Every construct
(`#strict_import`, `#starttype`, `#ccall`, ...) is a custom hsc2hs construct that
emits Haskell while the generated C program runs. Cross mode never runs that
program: it recognises only a fixed set of built-in directives and rejects
everything else with

```
directive strict_import cannot be handled in cross-compilation mode
```

`--via-asm` does not help, it only changes how cross mode extracts constants. No
change to `bindings.dsl.h` can lift this; it needs hsc2hs to support custom
constructs when cross compiling.

Cross compiling still works if you can execute target binaries, e.g. with
qemu-user plus `binfmt_misc`, or wine for Windows targets. Cabal gets in the way
here: it passes `-x` to hsc2hs whenever the host platform differs from the build
platform, and hsc2hs has no flag to undo that. Point Cabal at a wrapper that
drops the flag and lets the normal compile-and-run path proceed under emulation:

```sh
#!/bin/sh
# hsc2hs-no-cross, used via --with-hsc2hs=/path/to/hsc2hs-no-cross
for a in "$@"; do
  shift
  case "$a" in
    -x|--cross-compile) ;;
    *) set -- "$@" "$a" ;;
  esac
done
exec hsc2hs "$@"
```

Otherwise, write plain `.hsc` without bindings-DSL for the modules you need to
cross compile.

## Changelog

Changes in 1.1.0

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

* bindings-gpgme: catch up with the API added between gpgme 1.6 and 2.1, which
  the binding had never covered. Key creation and editing (createkey, adduid,
  keysign, setexpire, interact and friends), context flags (offline, sender,
  status callback, set_ctx_flag), the encrypt, decrypt, export and keylist mode
  flags, importing and exporting by key rather than by pattern, TOFU, and the
  various new struct members. Each is guarded on the gpgme version that
  introduced it, so the binding still builds against older releases.

* bindings-gpgme: expose the key capability and status bits (revoked, expired,
  can_encrypt, secret, ...) as c'gpgme_key_*, c'gpgme_subkey_* and related
  accessors. They are C bitfields, which have no offsetof and so could not be
  bound as struct fields; they now go through inlines.c. Previously there was no
  way to tell whether a listed key was revoked or able to encrypt.

* bindings-gpgme: bind gpgme_error_from_syserror through inlines.c. It is a
  static inline in gpgme.h rather than a symbol in libgpgme, so a #ccall linked
  but failed to resolve at load time.

* bindings-gpgme: add gpgme_invalid_key_next. The next member of
  _gpgme_invalid_key is bound as an embedded struct instead of a pointer, so
  invalid_recipients and invalid_signers cannot be walked. Fixing the field
  would change the type of a generated accessor and break its callers, so it is
  left as it is and this is added alongside.

* bindings-hdf5: hide H5D_MPIO_FILTERS on HDF5 1.10 and later, which removed
  it.

* bindings-libcddb: declare CDDB_CATEGORY as const char*, matching libcddb.
  The accessor was instantiated with char*, so the generated return type
  dropped the const on the pointed-to char. GCC warned about that before 14
  and rejects it from 14 on.

* Replace Travis with GitHub Actions, building bindings-DSL and bindings-posix
  across GHC 9.6 to 9.12, bindings-gpgme against the latest gpgme 1.x and 2.x,
  bindings-libcddb under GCC 14, and bindings-hdf5.

* The code generated by #stoptype now carries {-# LINE #-} pragmas pointing back
  into the .hsc file, so GHC reports an error in a struct field at that field
  rather than at an unrelated line before the #starttype block.

* Every bindings-* package accepts bindings-DSL < 1.2, and is released so that
  the new bound reaches Hackage. Releases are now tagged per package
  (bindings-DSL-1.1.0, bindings-hdf5-0.1.3, ...) rather than with a bare
  version, which was ambiguous once more than one package was being released.

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
