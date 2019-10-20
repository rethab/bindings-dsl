{ nixpkgs ? import <nixpkgs> {}, compiler ? "default", doBenchmark ? false }:

let

  inherit (nixpkgs) pkgs;

  f = { mkDerivation, base, stdenv }:
      mkDerivation {
        pname = "bindings-DSL";
        version = "1.0.25";
        src = ./.;
        libraryHaskellDepends = [ base ];
        homepage = "https://github.com/jwiegley/bindings-dsl/wiki";
        description = "FFI domain specific language, on top of hsc2hs";
        license = stdenv.lib.licenses.bsd3;
      };

  haskellPackages = if compiler == "default"
                       then pkgs.haskellPackages
                       else pkgs.haskell.packages.${compiler};

  variant = if doBenchmark then pkgs.haskell.lib.doBenchmark else pkgs.lib.id;

  drv = variant (haskellPackages.callPackage f {});

in

  if pkgs.lib.inNixShell then drv.env else drv
