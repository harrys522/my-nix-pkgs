{ inputs, xnode, ... }@flakeContext:
let
  isoModule = xnode inputs.xnodepkgs;
in
inputs.nixos-generators.nixosGenerate {
  system = "x86_64-linux";
  format = "iso";
  modules = [
    isoModule
  ];
}
