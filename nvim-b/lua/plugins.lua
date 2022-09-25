return require("packer").startup(function()
  -- Para que packer se pueda administrar
  use "wbthomason/packer.nvim"
  use "lewis6991/impatient.nvim"
  use {
    "kyazdani42/nvim-tree.lua",
    requires = {
      "kyazdani42/nvim-web-devicons",
    },
  }
  use { "akinsho/bufferline.nvim", tag = "v2.*", requires = "kyazdani42/nvim-web-devicons" }
  use { "nvim-lualine/lualine.nvim", requires = "kyazdani42/nvim-web-devicons" }

  -- Temas (Descomente cuando los utilice)
  -- use("bluz71/vim-nightfly-guicolors")
  use { "shaunsingh/oxocarbon.nvim", run = "./install.sh" }
  -- use("rebelot/kanagawa.nvim")
  -- use({ "catppuccin/nvim", as = "catppuccin" })
  -- use("EdenEast/nightfox.nvim")
  -- use({
  --   "olimorris/onedarkpro.nvim",
  -- })
  -- use{
  --   "rose-pine/neovim",
  --   as = "rose-pine",
  --   tag = "v1.*",
  -- }
  -- use("wuelnerdotexe/vim-enfocado")
  -- use({ "challenger-deep-theme/vim", as = "challenger-deep" })
  -- use { "ellisonleao/gruvbox.nvim" }
  -- use("morhetz/gruvbox")
  -- use { "NightCS/night.nvim", as = "night" }
  -- use { "Everblush/everblush.nvim", as = "everblush" }
  use "folke/tokyonight.nvim"
  -- use "sam4llis/nvim-tundra"

  -- Kodigo (super coco)
  -- Treesitter y sus acompañantes
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
  use { "p00f/nvim-ts-rainbow", requires = "nvim-treesitter/nvim-treesitter" }
  use { "windwp/nvim-ts-autotag", requires = "nvim-treesitter/nvim-treesitter" }
  use "RRethy/vim-illuminate"
  use "tpope/vim-surround"
  use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
  use { "mfussenegger/nvim-dap-python", requires = { "mfussenegger/nvim-dap" } }

  --LSP
  use { "glepnir/lspsaga.nvim", branch = "main" }
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  }
  use {
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
  }
  use "onsails/lspkind-nvim"
  use "rafamadriz/friendly-snippets"
  use "editorconfig/editorconfig-vim"
  use "mhartington/formatter.nvim"
  use { "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" }
  use {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig",
  }

  --Lengaujes
  use { "simrat39/rust-tools.nvim", requires = { "neovim/nvim-lspconfig", "nvim-lua/plenary.nvim" } }
  use {
    "saecki/crates.nvim",
    tag = "v0.2.1",
    requires = { "nvim-lua/plenary.nvim" },
  }
  use "lervag/vimtex"
  use { "iamcco/markdown-preview.nvim", run = "cd app && yarn install" }
  use { "thosakwe/vim-flutter", requires = "Nash0x7E2/awesome-flutter-snippets" }

  --GIT
  use { "TimUntersberger/neogit", requires = { "nvim-lua/plenary.nvim", "sindrets/diffview.nvim" } }
  use {
    "lewis6991/gitsigns.nvim",
  }
  use "tpope/vim-fugitive"
  use "akinsho/git-conflict.nvim"

  --Utilidades
  use { "windwp/nvim-autopairs" }
  use "gaoDean/autolist.nvim"
  use { "norcalli/nvim-colorizer.lua" }
  use { "lukas-reineke/indent-blankline.nvim" }
  use {
    "nvim-telescope/telescope.nvim",
  }
  use "rcarriga/nvim-notify"
  use "KabbAmine/vCoolor.vim"
  use {
    "phaazon/hop.nvim",
    branch = "v2", -- optional but strongly recommended
  }
  use "AndrewRadev/tagalong.vim"
  use "tpope/vim-repeat"
  use "terrortylor/nvim-comment"
  use "mbbill/undotree"

  -- Atajos
  use "folke/which-key.nvim"

  -- Terminales
  use "voldikss/vim-floaterm"
  use {
    "akinsho/toggleterm.nvim",
  }

  -- Cosas bonitas
  use "kyazdani42/nvim-web-devicons"
  use { "nvim-neorg/neorg", requires = "nvim-lua/plenary.nvim" }
  use { "glepnir/dashboard-nvim" }
  use {
    "samodostal/image.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
    },
  }
  use "sunjon/shade.nvim"
end)
