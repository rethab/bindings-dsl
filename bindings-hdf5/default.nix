{ compiler ? "ghc864"

, rev    ? "3cd3d1eeb6b26f3acb9e9e16cd7220cd5eb07148"
, sha256 ? "0671riiyzw2y3vw2apxhnq6vq67py64cqkgwiajfnw5qcrva86pw"

, pkgs   ?
    import (builtins.fetchTarball {
      url = "https://github.com/NixOS/nixpkgs/archive/${rev}.tar.gz";
      inherit sha256; }) {
      config.allowUnfree = true;
      config.allowBroken = false;
    }

, returnShellEnv ? pkgs.lib.inNixShell
, mkDerivation   ? null
}:

pkgs.haskellPackages.developPackage {
  root = ./.;

  overrides = self: super: {
  };

  source-overrides = {
  };

  modifier = drv: pkgs.haskell.lib.addBuildDepends drv [
    pkgs.hdf5_1_8
  ];

  inherit returnShellEnv;
}
