--Gruvbox
--vim.cmd([[
--set background=dark
--let g:gruvbox="medium"
--let g:gruvbox_italic = 1
--colorscheme gruvbox
--]])
--local opciones_lualine = {
--tema = "gruvbox-material",
--tema = "everforest",
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

-- configuracion de nightfox
--local nightfox = require("nightfox")
--local grupos = {
--TSPunctDelimiter = { fg = "${red}" },
--LspCodeLens = { bg = "#000000", style = "italic" },
--DiagnosticUnderlineError = { bg = "NONE", style = "underline" },
--DiagnosticUnderlineWarn = { bg = "NONE", style = "underline" },
--DiagnosticUnderlineInfo = { bg = "NONE", style = "underline" },
--DiagnosticUnderlineHint = { bg = "NONE", style = "underline" },
--}
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
--modules = { lsp_saga = true },
--},
--groups = grupos,
--})
--vim.cmd("colorscheme duskfox")
----vim.cmd("colorscheme terafox")
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
--vim.g.nightflyUndercurls = 0
--vim.cmd([[colorscheme nightfly]])
--local opciones_lualine = {
--tema = "",
--estilo = "eviline",
--}

-- Configuracion para neosolarized
vim.cmd([[
colorscheme NeoSolarized
set background=dark
let g:neosolarized_italic = 1
]])
local opciones_lualine = {
  tema = "solarized_dark",
  estilo = "burbuja",
}

--vim.o.background = "dark"
--local onedarkpro = require("onedarkpro")
--onedarkpro.setup({
---- Theme can be overwritten with 'onedark' or 'onelight' as a string
--theme = function()
--if vim.o.background == "dark" then
--return "onedark"
--else
--return "onelight"
--end
--end,
--hlgroups = {
--DiagnosticUnderlineError = { bg = "NONE", style = "underline" },
--DiagnosticUnderlineWarn = { bg = "NONE", style = "underline" },
--DiagnosticUnderlineInfo = { bg = "NONE", style = "underline" },
--DiagnosticUnderlineHint = { bg = "NONE", style = "underline" },
--},
--plugins = { -- Override which plugins highlight groups are loaded
--native_lsp = true,
--startify = true,
--treesitter = true,
--lsp_saga = true,
--},
--styles = {
--strings = "NONE", -- Style that is applied to strings
--comments = "italic", -- Style that is applied to comments
--keywords = "bold,italic", -- Style that is applied to keywords
--functions = "NONE", -- Style that is applied to functions
--variables = "NONE", -- Style that is applied to variables
--},
--options = {
--bold = true, -- Use the themes opinionated bold styles?
--italic = true, -- Use the themes opinionated italic styles?
--underline = true, -- Use the themes opinionated underline styles?
--undercurl = true, -- Use the themes opinionated undercurl styles?
--cursorline = true, -- Use cursorline highlighting?
--transparency = false, -- Use a transparent background?
--terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
--window_unfocussed_color = false, -- When the window is out of focus, change the normal background?
--},
--})
--onedarkpro.load()

--local opciones_lualine = {
----tema = "everforest",
--tema = "material",
--estilo = "burbuja",
--}

return opciones_lualine
