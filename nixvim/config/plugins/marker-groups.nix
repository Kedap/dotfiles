{pkgs, ...}: let
  marker-groups-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "marker-groups-nvim";
    version = "main";
    src = pkgs.fetchFromGitHub {
      owner = "jameswolensky";
      repo = "marker-groups.nvim";
      rev = "main";
      hash = "sha256-Zb0hNij65m9KB+xCwaPSP7VnnTooKjLGI/uD9lfhcTY=";
    };
    # Descomenta y añade dependencias si el plugin las necesita
    dependencies = [
      pkgs.vimPlugins.snacks-nvim
    ];
  };
in {
  extraPlugins = [
    marker-groups-nvim
  ];

  # Opcional: añade la configuración de Lua aquí
  extraConfigLua = ''
    require('marker-groups').setup({
      picker = 'snacks',
      keymaps = {
        enabled = true,
        prefix = '<leader>fe',
      }
    })
  '';
}
