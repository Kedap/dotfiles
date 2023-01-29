vim.g.gruvbox_italic = 1
vim.gruvbox_undercurl = 0
vim.gruvbox_underline = 1
vim.cmd([[
set background=dark
colorscheme gruvbox
]])

local opciones_lualine = {
  tema = "gruvbox",
  estilo = "burbuja",
}
return opciones_lualine
