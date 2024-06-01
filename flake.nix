# my-nix-pkgs/flake.nix
{
  description = "Xnode Package Repository";

  inputs.nixpkgs.url = "flake:nixpkgs/nixpkgs-unstable";

  outputs = { self, nixpkgs, ... }:
    let
      pkgs = import nixpkgs { system = "x86_64-linux"; };
    in
    {
      packages.x86_64-linux = import ./default.nix { inherit pkgs; };
    };
}