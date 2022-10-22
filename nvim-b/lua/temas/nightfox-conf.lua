-- configuracion de nightfox

local nightfox = require "nightfox"
local grupos = {
  all = {
    --TSPunctDelimiter = { fg = "${red}" },
    LspCodeLens = { bg = "#000000", style = "italic" },
    DiagnosticUnderlineError = { bg = "NONE", style = "underline" },
    DiagnosticUnderlineWarn = { bg = "NONE", style = "underline" },
    DiagnosticUnderlineInfo = { bg = "NONE", style = "underline" },
    DiagnosticUnderlineHint = { bg = "NONE", style = "underline" },
  },
}
nightfox.setup {
  options = {
    styles = {
      comments = "italic",
      functions = "NONE",
      keywords = "bold",
      numbers = "NONE",
      strings = "bold",
      types = "italic,bold",
      variables = "NONE",
    },
    inverse = {
      match_paren = true,
    },
    colors = {
      red = "#FF000",
      bg_alt = "#000000",
    },
    modules = {
      lsp_saga = true,
      lsp_trouble = true,
      whichkey = true,
      cmp = true,
      dap_ui = true,
      dashboard = true,
      gitsigns = true,
      hop = true,
      telescope = true,
      nvimtree = true,
      notify = true,
    },
  },
  groups = grupos,
}

vim.cmd "colorscheme duskfox"
local opciones_lualine = {
  -- tema = "palenight",
  tema = "modus-vivendi",
  estilo = "buble",
}

-- vim.cmd("colorscheme terafox")
-- local opciones_lualine = {
--   -- tema = "nightfly",
--   tema = "solarized_dark",
--   estilo = "buble",
-- }

-- vim.cmd("colorscheme nightfox")
-- local opciones_lualine = {
--   tema = "",
--   estilo = "eviline",
-- }

return opciones_lualine
