require("indent_blankline").setup {
  indentLine_enable = 1,
  filetype_exclude = {
    "help",
    "terminal",
    "toggleterm",
    "floatterm",
    "NvimTree",
    "",
  },
  show_trailing_blankline_indent = false,
  show_first_indent_level = false,
  show_current_context = true,
}
