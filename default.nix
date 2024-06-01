{ lib, pkgs, ... }:

let
  inherit (lib) callPackage;

  # Load all packages
  packages = {
    openmesh-core = callPackage ./packages/openmesh-core { };
    xnode-admin = callPackage ./packages/xnode-admin { };
  };

  # Load all modules
  modules = {
    module1 = callPackage' ./modules/xnode-admin.nix;
    #module2 = callPackage' ./modules/module2.nix;
  };
in
{
  inherit packages modules;
}
