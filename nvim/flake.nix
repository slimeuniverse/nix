{
  description = "Custom Neovim configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        
        nvim_rc = ''
          set runtimepath+=${./.}
          source ${./init.lua}
        '';
        nvim_ts_plugin = (pkgs.vimPlugins.nvim-treesitter.withPlugins (p: [ p.typescript p.javascript ]));
        nvim_plugins = with pkgs.vimPlugins; {
          start = [
            nvim_ts_plugin
            vim-surround
            vim-fugitive

						fzf-lua

            nord-nvim
          ];
        };
      in
      {
        packages.default = pkgs.neovim.override {
          configure = {
            customRC = nvim_rc;
            packages.plugins = nvim_plugins;
          };
        };
      });
}
