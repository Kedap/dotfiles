{...}: {
  imports = [
    ./avante.nix
    ./bufferline.nix
    ./cmp.nix
    ./dap.nix
    ./dashboard.nix
    ./db.nix
    ./diffview.nix
    ./formatter.nix
    ./minty.nix
    ./treesitter.nix
    ./java.nix
    ./lspsaga.nix
    ./lualine.nix
    ./ufo.nix
    ./silicon.nix
    ./snacks.nix
    ./telescope.nix
    ./lsp.nix
    ./nvim-tree.nix
    ./temas.nix
    ./oil.nix
  ];

  plugins = {
    gitsigns.enable = true;
    comment.enable = true;
    nvim-surround.enable = true;
    toggleterm.enable = true;
    nvim-autopairs.enable = true;
    colorizer.enable = true;
    hop.enable = true;
    repeat.enable = true;
    nabla.enable = true;
    fugitive.enable = true;
    floaterm.enable = true;
    git-conflict.enable = true;
    fidget.enable = true;
    undotree.enable = true;
    rest.enable = true;
    markdown-preview.enable = true;
    neogit.enable = true;
    notify.enable = true;
    web-devicons.enable = true;
    mini.enable = true;
    rustaceanvim.enable = true;
    todo-comments.enable = true;
    trouble.enable = true;
    vimtex = {
      enable = true;
      settings.view_method = "zathura";
    };
  };
}
