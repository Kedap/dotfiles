vim.g.tokyonight_style = "strom"
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

vim.cmd [[colorscheme tokyonight]]

local opciones_lualine = {
  tema = "tokyonight",
  estilo = "burbuja",
}
return opciones_lualine
