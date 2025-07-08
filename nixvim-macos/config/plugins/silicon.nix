{pkgs, ...}: let
  extraPackages = with pkgs; [
    silicon
  ];
  nvimSiliconSrc = pkgs.fetchFromGitHub {
    owner = "michaelrommel";
    repo = "nvim-silicon";
    rev = "7f66bda8f60c97a5bf4b37e5b8acb0e829ae3c32";
    hash = "sha256-XiYn/L2e/B+6LTjak3jAwRgnZ3gCbsyA0J61Dd+jZv4=";
  };

  nvimSiliconPlugin = pkgs.vimUtils.buildVimPlugin {
    name = "nvim-silicon";
    src = nvimSiliconSrc;
  };

  siliconConfigLua = ''
    require("silicon").setup({
      font = "FiraCode Nerd Font=34",
      -- Puedes añadir otras opciones de silicon aquí si las necesitas en el futuro
      -- Por ejemplo:
      -- theme = "Dracula",
      -- background = "#282A36",
      -- language = "auto", -- auto detect language
      -- output = "~/Pictures/silicon-{year}{month}{day}_{H}{M}{S}.{ext}", -- SE CAMBIÓ $ a nada para evitar error de Nix
    })
  '';
in {
  extraPlugins = [nvimSiliconPlugin];
  extraConfigLua = siliconConfigLua;
}
