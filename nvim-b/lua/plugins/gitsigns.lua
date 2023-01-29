return {
  "lewis6991/gitsigns.nvim",
  event = "BufRead",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local gitsigns = require "gitsigns"
    gitsigns.setup {
      trouble = false,
    }
  end,
}
