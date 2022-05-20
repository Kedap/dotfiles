return require("packer").startup(function()
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  -- Temas
  use("morhetz/gruvbox")
  use({ "catppuccin/nvim", as = "catppuccin" })
  use("EdenEast/nightfox.nvim")
  use("folke/tokyonight.nvim")
  use("Kedap/vim-nightfly-guicolors")
  use("overcache/NeoSolarized")
  use("olimorris/onedarkpro.nvim")
  use({ "rose-pine/neovim", as = "rose-pine" })
  use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })

  -- Utilizadades
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use({ "akinsho/bufferline.nvim", requires = "kyazdani42/nvim-web-devicons" })
  use("windwp/nvim-autopairs")
  use({
    "kyazdani42/nvim-tree.lua",
    requires = {
      "kyazdani42/nvim-web-devicons",
    },
  })
  use("windwp/nvim-ts-autotag")
  use({
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  })
  use("lukas-reineke/indent-blankline.nvim")
  use({
    "phaazon/hop.nvim",
    config = function()
      require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
    end,
  })
  use("KabbAmine/vCoolor.vim")
  use("sotte/presenting.vim")
  use({ "skywind3000/asynctasks.vim", requires = "skywind3000/asyncrun.vim" })

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
  use("rcarriga/nvim-notify")

  -- Codigo
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
      "f3fora/cmp-spell",
    },
  })
  use("onsails/lspkind-nvim")
  use("rafamadriz/friendly-snippets")
  --use({ "~/Documentos/repos/friendly-snippets", branch = "extended-global" })
  use("norcalli/nvim-colorizer.lua")
  use("editorconfig/editorconfig-vim")
  use("mhartington/formatter.nvim")
  use({ "tami5/lspsaga.nvim", requires = "neovim/nvim-lspconfig" })
  use("williamboman/nvim-lsp-installer")
  use("neovim/nvim-lspconfig")
  use("preservim/nerdcommenter")
  use("puremourning/vimspector")

  -- Lenguajes
  use({
    "simrat39/rust-tools.nvim",
    requires = { "neovim/nvim-lspconfig" },
  })
  use({
    "saecki/crates.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  })
  use({ "thosakwe/vim-flutter", requires = "Nash0x7E2/awesome-flutter-snippets" })
  use("lervag/vimtex")
  use({ "iamcco/markdown-preview.nvim", run = "cd app && yarn install" })

  -- Terminales
  use("voldikss/vim-floaterm")
  use("akinsho/toggleterm.nvim")
end)
