{ pkgs ? import <nixpkgs> {}}:

pkgs.haskell.packages.ghc822Binary.callPackage ./twidlk.nix { }
