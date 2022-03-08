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

--Gruvbox Material
--vim.cmd([[
--set background=dark
--let g:gruvbox_material_background = 'medium'
--let g:grubox_material_enable_italic = 1
--colorscheme gruvbox-material
--]])
--local lualine = "gruvbox"

-- catppuccin
--local catppuccin = require("catppuccin")
--catppuccin.setup()
--vim.cmd[[colorscheme catppuccin]]
--local lualine = "catppuccin"

--nightfox
local nightfox = require("nightfox")
nightfox.setup({
  fox = "duskfox",
  --fox = "nordfox",
  styles = {
    comments = "italic",
    keywords = "bold",
    functions = "italic,bold",
  },
  inverse = {
    match_paren = true,
  },
  colors = {
    red = "#FF000",
    bg_alt = "#000000",
  },
  hlgroups = {
    TSPunctDelimiter = { fg = "${red}" },
    LspCodeLens = { bg = "#000000", style = "italic" },
  },
})
nightfox.load()
local lualine = "nightfox"

-- Configuracion para tokyonight
--vim.g.tokyonight_style = "storm"
--vim.cmd([[colorscheme tokyonight]])
--local lualine = "tokyonight"

return lualine
