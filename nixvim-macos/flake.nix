{
  description = "Kedap's Neovim kit Work";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  nixConfig = {
    substituters = [
      "https://cache.nixos.org"
      "https://nix-community.cachix.org"
    ];
    trusted-public-keys = [
      "nix-node.cachix.org-1:2YOHGtGxa8VrFiWAkYnYlcoQ0sSu+AqCniSfNagzm60="
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY"
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
    ];
    warn-dirty = false;
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    nixvim,
    flake-parts,
    ...
  }:
    flake-parts.lib.mkFlake {inherit inputs self;} {
      systems = ["x86_64-linux" "x86_64-darwin" "aarch64-darwin"];

      perSystem = {system, ...}: let
        nixLib = (import nixpkgs {inherit system;}).lib;

        pkgs = import nixpkgs {
          inherit system;
          overlays = [
            (final: prev: {nodejs = prev.nodejs_22;})
          ];
          config = {
            allowUnfreePredicate = pkg:
              builtins.elem (nixLib.strings.getName pkg) ["codeium"];
          };
        };
      in {
        _module.args.pkgs = pkgs;

        packages.default = (import nixvim).legacyPackages.${system}.makeNixvimWithModule {
          inherit pkgs system;
          module = import ./config;
        };

        devShells.default = pkgs.mkShell {
          packages = with pkgs; [ripgrep fd jq nodejs];
        };
      };
    };
}
