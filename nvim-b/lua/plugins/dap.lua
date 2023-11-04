return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    { "theHamsta/nvim-dap-virtual-text", config = true },
    "mfussenegger/nvim-dap-python",
    "mxsdev/nvim-dap-vscode-js",
    "suketa/nvim-dap-ruby",
    "leoluz/nvim-dap-go",

    "nvim-telescope/telescope-dap.nvim",
    "rcarriga/cmp-dap",
  },
  keys = {
    { "<leader>d" },
  },

  config = function()
    require "config.dap"
    require "config.telescope"

    require("telescope").load_extension "dap"
  end,
}
