--Gruvbox
--vim.cmd([[
--set background=dark
--let g:gruvbox="medium"
--let g:gruvbox_italic = 1
--colorscheme gruvbox
--]])
--local opciones_lualine = {
--tema = "gruvbox-material",
--estilo = "burbuja",
--}

-- Catppuccin
--local catppuccin = require("catppuccin")
--catppuccin.setup()
--vim.cmd([[colorscheme catppuccin]])
--local opciones_lualine = {
--tema = "catppuccin",
--estilo = "burbuja",
--}

--nightfox
--local nightfox = require("nightfox")
--nightfox.setup({
--options = {
--styles = {
--comments = "italic",
--keywords = "bold",
--functions = "italic,bold",
--},
--inverse = {
--match_paren = true,
--},
--colors = {
--red = "#FF000",
--bg_alt = "#000000",
--},
--hlgroups = {
--TSPunctDelimiter = { fg = "${red}" },
--LspCodeLens = { bg = "#000000", style = "italic" },
--},
--},
--})
--vim.cmd("colorscheme duskfox")
--local opciones_lualine = {
--tema = "",
--estilo = "eviline",
--}

-- Configuracion para tokyonight
--vim.g.tokyonight_style = "storm"
--vim.g.tokyonight_transparent = true
--vim.g.tokyonight_lualine_bold = true
--vim.cmd([[colorscheme tokyonight]])
--local opciones_lualine = {
--tema = "tokyonight",
--estilo = "burbuja",
--}

-- Configuracion de nightfly
vim.g.nightflyUndercurls = 0
vim.cmd([[colorscheme nightfly]])
local opciones_lualine = {
  tema = "",
  estilo = "eviline",
}

-- Configuracion para neosolarized
--vim.cmd([[
--colorscheme NeoSolarized
--set background=dark
--let g:neosolarized_italic = 1
--]])
--local opciones_lualine = {
--tema = "solarized_dark",
--estilo = "burbuja",
--}

return opciones_lualine
