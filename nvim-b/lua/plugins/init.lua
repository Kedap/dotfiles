return require("packer").startup(function()
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  -- Temas
  use("shaunsingh/nord.nvim")
  use("morhetz/gruvbox")
  use("sainnhe/gruvbox-material")
  use({ "catppuccin/nvim", as = "catppuccin" })
  use("EdenEast/nightfox.nvim")
  use("folke/tokyonight.nvim")
  use("savq/melange")
  use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })

  -- Utilizadades
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use({ "akinsho/bufferline.nvim", requires = "kyazdani42/nvim-web-devicons" })
  use("windwp/nvim-autopairs")
  use({
    "preservim/nerdtree",
    requires = {
      "Xuyuanp/nerdtree-git-plugin",
      "kyazdani42/nvim-web-devicons",
      "tiagofumo/vim-nerdtree-syntax-highlight",
      "ryanoasis/vim-devicons",
    },
  })
  use("windwp/nvim-ts-autotag")
  use({
    "junegunn/fzf.vim",
    requires = "junegunn/fzf",
    run = function()
      vim.fn["fzf#install"]()
    end,
  })
  use({
    "hrsh7th/nvim-cmp",
    requires = {
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-calc",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-vsnip",
      "hrsh7th/vim-vsnip",
      "hrsh7th/vim-vsnip-integ",
    },
  })
  use("onsails/lspkind-nvim")
  use("rafamadriz/friendly-snippets")
  use("norcalli/nvim-colorizer.lua")
  use("lukas-reineke/indent-blankline.nvim")
  use({
    "phaazon/hop.nvim",
    config = function()
      require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
    end,
  })

  -- Git
  use({
    "lewis6991/gitsigns.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("gitsigns").setup()
    end,
  })
  use("tpope/vim-fugitive")
  use("junegunn/gv.vim")
  use("f-person/git-blame.nvim")

  -- De pana
  use("mhinz/vim-startify")
  use({ "p00f/nvim-ts-rainbow", requires = "nvim-treesitter/nvim-treesitter" })

  -- Codigo
  use("editorconfig/editorconfig-vim")
  use("mhartington/formatter.nvim")
  use({ "tami5/lspsaga.nvim", requires = "neovim/nvim-lspconfig" })
  use({ "williamboman/nvim-lsp-installer", requires = "neovim/nvim-lspconfig" })
  use("preservim/nerdcommenter")
  use({ "thosakwe/vim-flutter", requires = "Nash0x7E2/awesome-flutter-snippets" })
  use("rust-lang/rust.vim")

  -- Terminales
  use("voldikss/vim-floaterm")
  use("akinsho/toggleterm.nvim")
end)
