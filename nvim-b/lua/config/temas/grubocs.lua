vim.o.background = "dark"
require("gruvbox").setup({
  -- undercurl = true,
  underline = true,
  bold = true,
  -- italic = true,
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  overrides = {},
})
vim.cmd("colorscheme gruvbox")

local opciones_lualine = {
  tema = "gruvbox-material",
  estilo = "buble",
}
-- Se recomienda cambiar los iconos del LSP en lua/lsp/servidores.lua
return opciones_lualine
