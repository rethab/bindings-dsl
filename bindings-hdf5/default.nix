{ haskellPackages ? (import <nixpkgs> {}).haskellPackages
, hdf5 ? (import <nixpkgs> {}).hdf5
, zlib ? (import <nixpkgs> {}).zlib
}:
  let inherit (haskellPackages) cabal bindingsDSL
;
in cabal.mkDerivation (self: {
  pname = "bindings-hdf5";
  version = "0.1.1";
  src = ./.;
  buildDepends = [ bindingsDSL zlib];
  extraLibraries = [ hdf5 ];
  meta = {
    description = "Project bindings-* raw interface to HDF5 library";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
