return {
  "tpope/vim-repeat",
  { "nvim-tree/nvim-web-devicons", config = true },
  { "jbyuki/nabla.nvim", ft = { "tex", "norg" } },
  { "tpope/vim-fugitive", cmd = "Git" },
  { "voldikss/vim-floaterm", cmd = "FloatermNew" },
  { "akinsho/toggleterm.nvim", cmd = "ToggleTerm", config = true },
  { "akinsho/git-conflict.nvim", version = "*", config = true },
  { "j-hui/fidget.nvim", event = "BufRead", opts = { window = { blend = 0 } }, tag = "legacy" },
  { "terrortylor/nvim-comment", name = "nvim_comment", config = true, keys = {
    { "gc", mode = "n" },
  } },
  { "tpope/vim-surround", keys = {
    { "cs", mode = "n" },
  } },
  {
    "KabbAmine/vCoolor.vim",
    keys = {
      { "<leader>k", mode = "n" },
    },
    config = function()
      vim.g.vcoolor_disable_mappings = 1
    end,
  },
  {
    "mbbill/undotree",
    config = function()
      vim.g.undotree_ShortIndicators = 1
      vim.g.undotree_TreeNodeShape = "◯"
      vim.g.undotree_WindowLayout = 2
    end,
    cmd = "UndotreeToggle",
  },
}
