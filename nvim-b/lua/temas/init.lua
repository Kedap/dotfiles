--Nord
--vim.cmd([[colorscheme nord]])
--local lualine = "nord"

--Gruvbox
--vim.cmd([[
--set background=dark
--let g:gruvbox="medium"
--let g:gruvbox_italic = 1
--colorscheme gruvbox
--]])
--local lualine = "gruvbox"

-- Catppuccin
--local catppuccin = require("catppuccin")
--catppuccin.setup()
--vim.cmd[[colorscheme catppuccin]]
--local lualine = "catppuccin"

--nightfox
--local nightfox = require("nightfox")
--nightfox.setup({
--fox = "duskfox",
----fox = "nordfox",
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
--})
--nightfox.load()
--local lualine = "nightfox"

-- Configuracion para tokyonight
--vim.g.tokyonight_style = "storm"
--vim.g.tokyonight_transparent = true
--vim.g.tokyonight_lualine_bold = true
--vim.cmd([[colorscheme tokyonight]])
--local lualine = "tokyonight"

-- Configuracion de nightfly
--vim.g.nightflyUndercurls = 0
--vim.cmd([[colorscheme nightfly]])
--local lualine = "nightfly"

-- Configuracion para neosolarized
vim.cmd([[
colorscheme NeoSolarized
set background=dark
let g:neosolarized_italic = 1
]])
local lualine = "nord"

return lualine
