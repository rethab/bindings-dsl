{ nixpkgs ? import <nixpkgs> {}, compiler ? "default", doBenchmark ? false }:

let

  inherit (nixpkgs) pkgs;

  f = { mkDerivation, base, bindings-DSL, gpgme, stdenv }:
      mkDerivation {
        pname = "bindings-gpgme";
        version = "0.1.7";
        src = ./.;
        libraryHaskellDepends = [ base bindings-DSL ];
        librarySystemDepends = [ gpgme ];
        homepage = "https://github.com/jwiegley/bindings-dsl";
        description = "Project bindings-* raw interface to gpgme";
        license = stdenv.lib.licenses.bsd3;
      };

  haskellPackages = if compiler == "default"
                       then pkgs.haskellPackages
                       else pkgs.haskell.packages.${compiler};

  variant = if doBenchmark then pkgs.haskell.lib.doBenchmark else pkgs.lib.id;

  drv = variant (haskellPackages.callPackage f {});

in

  if pkgs.lib.inNixShell then drv.env else drv
