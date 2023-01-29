require("rose-pine").setup({
  ---@usage 'main'|'moon'
  --dark_variant = "main",
  dark_variant = "moon",
  bold_vert_split = false,
  dim_nc_background = false,
  disable_background = false,
  disable_float_background = false,
  disable_italics = false,
  ---@usage string hex value or named color from rosepinetheme.com/palette
  groups = {
    background = "base",
    panel = "surface",
    border = "highlight_med",
    comment = "muted",
    link = "iris",
    punctuation = "subtle",

    error = "love",
    hint = "iris",
    info = "foam",
    warn = "gold",

    headings = {
      h1 = "iris",
      h2 = "foam",
      h3 = "rose",
      h4 = "gold",
      h5 = "pine",
      h6 = "foam",
    },
  },
  highlight_groups = {
    --LspCodeLens = { bg = "#000000", style = "italic" },
    DiagnosticUnderlineError = { bg = "NONE", style = "underline" },
    DiagnosticUnderlineWarn = { bg = "NONE", style = "underline" },
    DiagnosticUnderlineInfo = { bg = "NONE", style = "underline" },
    DiagnosticUnderlineHint = { bg = "NONE", style = "underline" },
  },
})
vim.cmd("colorscheme rose-pine")

local opciones_lualine = {
  tema = "rose-pine",
  estilo = "buble",
}
return opciones_lualine
