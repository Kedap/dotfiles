return {
  "folke/snacks.nvim",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    image = { enabled = true },
    scratch = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    indent = {
      enabled = true,
      animate = {
        enabled = vim.fn.has("nvim-0.10") == 1,
        style = "out",
        easing = "linear",
        duration = {
          step = 8, -- ms per step
          total = 500, -- maximum duration
        },
      },
    },
  },
}
