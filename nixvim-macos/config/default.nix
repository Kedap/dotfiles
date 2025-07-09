{pkgs, ...}: {
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
    curl
  ];
}
