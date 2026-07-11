# bindings-dsl

[![Hackage](https://img.shields.io/hackage/v/bindings-DSL.svg)](https://hackage.haskell.org/package/bindings-DSL)
[![CI](https://github.com/rethab/bindings-dsl/actions/workflows/ci.yml/badge.svg)](https://github.com/rethab/bindings-dsl/actions/workflows/ci.yml)
![BSD3 License](https://img.shields.io/github/license/rethab/bindings-dsl?label=license)

`bindings-DSL` is a domain specific language for writing Haskell FFI bindings, on
top of [hsc2hs](https://downloads.haskell.org/ghc/latest/docs/users_guide/utils.html#writing-haskell-interfaces-to-c-code-hsc2hs).
It is a set of C macros that describe a C interface, and from which hsc2hs
extracts the Haskell code that mimics it: `#ccall` for a function, `#starttype`
and `#field` for a struct, `#num` for a constant, and so on.

```haskell
#include <bindings.dsl.h>
#include <gpgme.h>

module Bindings.Gpgme where
#strict_import

#num GPGME_PK_RSA

#starttype struct _gpgme_key
#field revoked , CUInt
#field fpr     , CString
#stoptype

#ccall gpgme_get_key , <gpgme_ctx_t> -> CString -> Ptr <gpgme_key_t> -> CInt -> IO <gpgme_error_t>
```

Haskell names are derived from the C names automatically, so there is no naming
scheme to invent and no chance of the two drifting apart: a constant becomes
`c'GPGME_PK_RSA`, a struct becomes a `Storable` instance with `p'_gpgme_key'fpr`
accessors, and a function becomes `c'gpgme_get_key`. Structs are laid out by the
C compiler rather than by hand, which is what makes the bindings portable across
platforms where sizes and padding differ. There are also macros for binding
inline functions and macro functions, which have no symbol to call.

Full documentation, including a tutorial, is on the
[wiki](https://github.com/rethab/bindings-dsl/wiki). Release notes are in
[CHANGELOG.md](CHANGELOG.md).

## Packages

`bindings-DSL` is the DSL itself. The bindings built on top of it are released as
separate packages from this repository:

| Package | Hackage |
| --- | --- |
| [bindings-directfb](bindings-directfb) | [![Hackage](https://img.shields.io/hackage/v/bindings-directfb.svg?label=)](https://hackage.haskell.org/package/bindings-directfb) |
| [bindings-fann](bindings-fann) | [![Hackage](https://img.shields.io/hackage/v/bindings-fann.svg?label=)](https://hackage.haskell.org/package/bindings-fann) |
| [bindings-glib](bindings-glib) | [![Hackage](https://img.shields.io/hackage/v/bindings-glib.svg?label=)](https://hackage.haskell.org/package/bindings-glib) |
| [bindings-gpgme](bindings-gpgme) | [![Hackage](https://img.shields.io/hackage/v/bindings-gpgme.svg?label=)](https://hackage.haskell.org/package/bindings-gpgme) |
| [bindings-gsl](bindings-gsl) | [![Hackage](https://img.shields.io/hackage/v/bindings-gsl.svg?label=)](https://hackage.haskell.org/package/bindings-gsl) |
| [bindings-hdf5](bindings-hdf5) | [![Hackage](https://img.shields.io/hackage/v/bindings-hdf5.svg?label=)](https://hackage.haskell.org/package/bindings-hdf5) |
| [bindings-libcddb](bindings-libcddb) | [![Hackage](https://img.shields.io/hackage/v/bindings-libcddb.svg?label=)](https://hackage.haskell.org/package/bindings-libcddb) |
| [bindings-libffi](bindings-libffi) | [![Hackage](https://img.shields.io/hackage/v/bindings-libffi.svg?label=)](https://hackage.haskell.org/package/bindings-libffi) |
| [bindings-posix](bindings-posix) | [![Hackage](https://img.shields.io/hackage/v/bindings-posix.svg?label=)](https://hackage.haskell.org/package/bindings-posix) |
| [bindings-sqlite3](bindings-sqlite3) | [![Hackage](https://img.shields.io/hackage/v/bindings-sqlite3.svg?label=)](https://hackage.haskell.org/package/bindings-sqlite3) |

## Contributing

Contributions are welcome, whether to the DSL itself or to any of the bindings.
Bugs, missing coverage of a C API, and build problems can be raised in the
[issue tracker](https://github.com/rethab/bindings-dsl/issues); pull requests are
just as welcome. CI builds the DSL and the bindings across several GHC versions
and library releases, so open a pull request and let it run.

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
