{pkgs, ...}: let
  volt-nvim = pkgs.vimUtils.buildVimPlugin {
    name = "volt-nvim";
    src = pkgs.fetchFromGitHub {
      owner = "nvzone";
      repo = "volt";
      rev = "7b8c5e790120d9f08c8487dcb80692db6d2087a1";
      hash = "sha256-szq/QBI2Y6DKeqBuJ8qA4LlGYnarLT6D/fvwepIgSVc=";
    };
  };

  minty-nvim = pkgs.vimUtils.buildVimPlugin {
    name = "minty-nvim";
    src = pkgs.fetchFromGitHub {
      owner = "nvzone";
      repo = "minty";
      rev = "aafc9e8e0afe6bf57580858a2849578d8d8db9e0";
      hash = "sha256-jdz0cR1uz1EdxFCuxndsK9gyTZ2jg8wdYA0v33SevOg=";
    };
    dependencies = [
      volt-nvim
      pkgs.vimPlugins.plenary-nvim
    ];
  };
in {
  extraPlugins = [
    minty-nvim
    volt-nvim
    pkgs.vimPlugins.plenary-nvim
  ];

  extraConfigLua = ''
    require('minty').setup({
      -- Tus opciones aquí
    })
  '';
}
