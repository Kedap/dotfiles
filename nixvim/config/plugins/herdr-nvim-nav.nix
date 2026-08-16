{pkgs, ...}: let
  herdr-nvim-nav = pkgs.vimUtils.buildVimPlugin {
    pname = "herdr-nvim-nav";
    version = "main";
    src = pkgs.fetchFromGitHub {
      owner = "aimdevlee";
      repo = "herdr-nvim-nav";
      rev = "main";
      hash = "sha256-2Sa10OaDgoy/Mw3lglrnmJn4RLUJv0dfU0MhXxXdnJI=";
    };
  };
in {
  extraPlugins = [
    herdr-nvim-nav
  ];

  # with_tmux = true hace fallback a vim-tmux-navigator cuando corres bajo tmux,
  # así reutiliza las mismas keymaps <C-hjkl> que ya usa tmux-navigator.nix
  extraConfigLua = ''
    require('herdr-nvim-nav').setup({
      with_tmux = true,
    })
  '';
}
