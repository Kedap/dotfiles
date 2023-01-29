return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", name = "neovim-web-devicons" },
  config = function()
    require "config.barritas"
  end,
}
