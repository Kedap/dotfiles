return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "ray-x/lsp_signature.nvim",
    "kevinhwang91/nvim-ufo",
  },
  config = function()
    require("config.mason")
  end,
}
