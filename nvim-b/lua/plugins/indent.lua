return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  event = "BufRead",
  config = function()
    local hooks = require "ibl.hooks"
    require("ibl").setup {
      exclude = {
        filetypes = {
          "help",
          "terminal",
          "toggleterm",
          "floatterm",
          "NvimTree",
          "nofile",
          "prompt",
          "quickfix",
        },
      },
      scope = {
        show_start = false,
        show_end = false,
      },
      indent = { char = "│" },
    }
    hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)
    hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_tab_indent_level)
  end,
}
