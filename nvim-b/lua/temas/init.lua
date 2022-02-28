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

--Palenight
--vim.cmd([[
--let g:palenight_terminal_italics=1
--set background=dark
--colorscheme palenight
--]])
--local lualine = "palenight"

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
    comments = "italic", -- change style of comments to be italic
    keywords = "bold", -- change style of keywords to be bold
    functions = "italic,bold", -- styles can be a comma separated list
  },
  inverse = {
    match_paren = true, -- inverse the highlighting of match_parens
  },
  colors = {
    red = "#FF000", -- Override the red color for MAX POWER
    bg_alt = "#000000",
  },
  hlgroups = {
    TSPunctDelimiter = { fg = "${red}" }, -- Override a highlight group with the color red
    LspCodeLens = { bg = "#000000", style = "italic" },
  },
})
nightfox.load()
local lualine = "nightfox"

return lualine
