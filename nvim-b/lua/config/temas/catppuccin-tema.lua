local catppuccin = require "catppuccin"
catppuccin.setup {
  flavour = "mocha",
  transparent_background = false,
  term_colors = false,
  styles = {
    comments = { "italic" },
    conditionals = { "italic" },
    loops = {},
    functions = { "italic" },
    keywords = { "bold" },
    strings = {},
    variables = {},
    numbers = {},
    booleans = { "bold" },
    properties = {},
    types = {},
    operators = {},
  },
  integrations = {
    treesitter = true,
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = { "italic" },
        hints = { "italic" },
        warnings = { "italic" },
        information = { "italic" },
      },
      underlines = {
        errors = { "underline" },
        hints = { "underline" },
        warnings = { "underline" },
        information = { "underline" },
      },
    },
    lsp_trouble = true,
    cmp = true,
    lsp_saga = true,
    gitgutter = false,
    gitsigns = true,
    telescope = true,
    nvimtree = {
      enabled = true,
      show_root = true,
      transparent_panel = false,
    },
    neotree = {
      enabled = false,
      show_root = false,
      transparent_panel = true,
    },
    which_key = true,
    dashboard = true,
    vim_sneak = false,
    fern = false,
    barbar = false,
    markdown = true,
    lightspeed = false,
    ts_rainbow = true,
    hop = true,
    notify = true,
    telekasten = false,
    symbols_outline = false,
    fidget = true,
  },
}
vim.cmd [[colorscheme catppuccin]]

local opciones_lualine = {
  tema = "catppuccin",
  estilo = "buble",
}

return opciones_lualine
