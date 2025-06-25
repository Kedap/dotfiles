{
  pkgs,
  lib,
  ...
}: {
  imports = [
    ./options.nix
    ./keymaps.nix
    ./plugins/main.nix
  ];

  extraPackages = with pkgs; [
    ripgrep
    fd
    trash-cli
    jq
  ];

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "codeium"
    ];
}
