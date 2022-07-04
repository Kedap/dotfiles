"configuracion de gruvbox
"set background=dark
"let g:gruvbox="medium"
"let g:gruvbox_italic = 1
"colorscheme gruvbox

"Tema de nord
"colorscheme nord
"hi Comment gui=italic
"hi Comment cterm=italic
"hi Type    gui=italic
"hi Type    cterm=italic
"let g:nord_italic = 1

"Configuracion de palenight
"let g:palenight_terminal_italics=1
"set background=dark
"colorscheme palenight

"Configuracion de one dark
"let g:one_allow_italics = 1
"set background=dark
"colorscheme one

"Configuracion para catppuccin
lua << EOF
  --local catppuccin = require("catppuccin")
    --catppuccin.setup({
    --transparent_background = false,
    --term_colors = false,
    --styles = {
    --comments = "italic",
    --conditionals = "italic",
    --loops = "NONE",
    --functions = "italic",
    --keywords = "bold",
    --strings = "NONE",
    --variables = "NONE",
    --numbers = "NONE",
    --booleans = "bold",
    --properties = "NONE",
    --types = "NONE",
    --operators = "NONE",
    --},
    --integrations = {
    --treesitter = true,
    --native_lsp = {
    --enabled = false,
    --underlines = {
    --errors = "underline",
    --hints = "underline",
    --warnings = "underline",
    --information = "underline",
    --},
    --},
    --lsp_trouble = false,
    --cmp = false,
    --lsp_saga = false,
    --gitgutter = false,
    --gitsigns = false,
    --telescope = false,
    --nvimtree = {
    --enabled = false,
    --},
    --neotree = {
    --enabled = false,
    --show_root = false,
    --transparent_panel = true,
    --},
    --which_key = false,
    --indent_blankline = {
    --enabled = false,
    --colored_indent_levels = true,
    --},
    --dashboard = false,
    --neogit = false,
    --vim_sneak = false,
    --fern = false,
    --barbar = false,
    --bufferline = false,
    --markdown = false,
    --lightspeed = false,
    --ts_rainbow = false,
    --hop = false,
    --notify = false,
    --telekasten = false,
    --symbols_outline = false,
    --},
    --})
    --vim.g.catppuccin_flavour = "macchiato"
    --vim.cmd([[colorscheme catppuccin]])
EOF

"nightfox
lua << EOF

  local nightfox = require("nightfox")
  local grupos = {
  all = {
  LspCodeLens = { bg = "#000000", style = "italic" },
  DiagnosticUnderlineError = { bg = "NONE", style = "underline" },
  DiagnosticUnderlineWarn = { bg = "NONE", style = "underline" },
  DiagnosticUnderlineInfo = { bg = "NONE", style = "underline" },
  DiagnosticUnderlineHint = { bg = "NONE", style = "underline" },
  },
  }
  nightfox.setup({
  options = {
  styles = {
  comments = "italic",
  functions = "NONE",
  keywords = "bold",
  numbers = "NONE",
  strings = "bold",
  types = "italic,bold",
  variables = "NONE",
  },
  inverse = {
  match_paren = true,
  },
  colors = {
  red = "#FF000",
  bg_alt = "#000000",
  },
  modules = {
  lsp_saga = false,
  cmp = false,
  hop = false,
  telescope = false,
  nvimtree = false,
  notify = false,
  },
  },
  groups = grupos,
  })
  vim.cmd("colorscheme duskfox")
  --vim.cmd("colorscheme terafox")

EOF

"configuraciones para la airline
"se necesita de powerline-fonts package

"let g:airline_theme='deus'
"let g:airline_theme='tomorrow'
"let g:airline_theme='wombat'
"let g:airline_theme='bubblegum'
"let g:airline_theme='nord'
"let g:airline_theme = 'palenight'
let g:airline_theme='one'
