require("monet").setup({
  transparent_background = false,
  semantic_tokens = true,
  dark_mode = true,
  highlight_overrides = {},
  color_overrides = {},
  styles = {
    strings = { "italic" },
  },
})
vim.cmd([[colorscheme monet]])

local opciones_lualine = {
  estilo = "eviline",
}
return opciones_lualine
