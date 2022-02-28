--Nord
--vim.cmd([[colorscheme nord]])
--vim.g.airline_theme = "nord"

--Gruvbox
--vim.cmd([[
--set background=dark
--let g:gruvbox="medium"
--let g:gruvbox_italic = 1
--colorscheme gruvbox
--]])
--vim.g.airline_theme = "deus"

--Palenight
--vim.cmd([[
--let g:palenight_terminal_italics=1
--set background=dark
--colorscheme palenight
--]])
--vim.g.airline_theme = "palenight"

-- catppuccin
--local catppuccin = require("catppuccin")
--catppuccin.setup()
--vim.cmd[[colorscheme catppuccin]]
--vim.g.airline_theme = "tomorrow"

-- nightfox
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
vim.g.airline_theme = "tomorrow"
