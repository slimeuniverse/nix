{
  description = "Typescript development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    nvim.url = "path:./nvim";
  };

  outputs = { self, nixpkgs, flake-utils, nvim }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        packages = with pkgs; [
          nvim.packages.${system}.default
          yarn
          nodejs_22
          typescript
          typescript-language-server
        ];
      in
      {
        devShells.default = pkgs.mkShell {
          inherit packages;
        };
      });
}
