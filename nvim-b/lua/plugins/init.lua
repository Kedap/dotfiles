return {
  "tpope/vim-repeat",
  { "nvim-tree/nvim-web-devicons", config = true },
  { "jbyuki/nabla.nvim", ft = { "tex", "norg" } },
  { "tpope/vim-fugitive", cmd = "Git" },
  { "voldikss/vim-floaterm", cmd = "FloatermNew" },
  { "nvzone/volt", lazy = true },
  {
    "nvzone/minty",
    cmd = { "Shades", "Huefy" },
  },
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
      "TmuxNavigatorProcessList",
    },
  },
  { "akinsho/toggleterm.nvim", cmd = "ToggleTerm", config = true },
  { "akinsho/git-conflict.nvim", version = "*", config = true },
  { "j-hui/fidget.nvim", event = "BufRead", opts = { window = { blend = 0 } }, tag = "v1.6.1" },
  { "terrortylor/nvim-comment", name = "nvim_comment", config = true, keys = {
    { "gc", mode = "n" },
  } },
  { "tpope/vim-surround", keys = {
    { "cs", mode = "n" },
  } },
  {
    "mbbill/undotree",
    config = function()
      vim.g.undotree_ShortIndicators = 1
      vim.g.undotree_TreeNodeShape = "◯"
      vim.g.undotree_WindowLayout = 2
    end,
    cmd = "UndotreeToggle",
  },
  -- { "mistweaverco/kulala.nvim", opts = {} },
  { "rest-nvim/rest.nvim" },
}
