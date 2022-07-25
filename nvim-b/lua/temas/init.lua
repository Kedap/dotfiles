--Gruvbox
--vim.cmd([[
--set background=dark
--let g:gruvbox="medium"
--let g:gruvbox_italic = 1
--colorscheme gruvbox
--]])
--local opciones_lualine = {
----tema = "gruvbox-material",
--tema = "everforest",
--estilo = "burbuja",
--}

-- Catppuccin
vim.g.catppuccin_flavour = "macchiato"
local catppuccin = require("catppuccin")
catppuccin.setup({
  transparent_background = false,
  term_colors = false,
  styles = {
    comments = { "italic" },
    conditionals = { "italic" },
    loops = {},
    functions = { "italic" },
    keywords = { "bold" },
    strings = {},
    variables = {},
    numbers = {},
    booleans = { "bold" },
    properties = {},
    types = {},
    operators = {},
  },
  integrations = {
    treesitter = true,
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = { "italic" },
        hints = { "italic" },
        warnings = { "italic" },
        information = { "italic" },
      },
      underlines = {
        errors = { "underline" },
        hints = { "underline" },
        warnings = { "underline" },
        information = { "underline" },
      },
    },
    lsp_trouble = false,
    cmp = true,
    lsp_saga = true,
    gitgutter = false,
    gitsigns = true,
    telescope = true,
    nvimtree = {
      enabled = true,
      show_root = true,
      transparent_panel = false,
    },
    neotree = {
      enabled = false,
      show_root = false,
      transparent_panel = true,
    },
    which_key = false,
    indent_blankline = {
      enabled = true,
      colored_indent_levels = true,
    },
    dashboard = false,
    neogit = false,
    vim_sneak = false,
    fern = false,
    barbar = false,
    bufferline = true,
    markdown = true,
    lightspeed = false,
    ts_rainbow = true,
    hop = true,
    notify = true,
    telekasten = false,
    symbols_outline = false,
  },
})
vim.cmd([[colorscheme catppuccin]])
local opciones_lualine = {
  tema = "catppuccin",
  estilo = "burbuja",
}

-- configuracion de nightfox
--local nightfox = require("nightfox")
--local grupos = {
--all = {
----TSPunctDelimiter = { fg = "${red}" },
--LspCodeLens = { bg = "#000000", style = "italic" },
--DiagnosticUnderlineError = { bg = "NONE", style = "underline" },
--DiagnosticUnderlineWarn = { bg = "NONE", style = "underline" },
--DiagnosticUnderlineInfo = { bg = "NONE", style = "underline" },
--DiagnosticUnderlineHint = { bg = "NONE", style = "underline" },
--},
--}
--nightfox.setup({
--options = {
--styles = {
--comments = "italic",
--functions = "NONE",
--keywords = "bold",
--numbers = "NONE",
--strings = "bold",
--types = "italic,bold",
--variables = "NONE",
--},
--inverse = {
--match_paren = true,
--},
--colors = {
--red = "#FF000",
--bg_alt = "#000000",
--},
--modules = {
--lsp_saga = true,
--cmp = true,
--hop = true,
--telescope = true,
--nvimtree = true,
--notify = true,
--},
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
--vim.cmd([[
--colorscheme NeoSolarized
--set background=dark
--let g:neosolarized_italic = 1
--]])
--local opciones_lualine = {
--tema = "solarized_dark",
--estilo = "burbuja",
--}

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
--hop = true,
--indentline = true,
--native_lsp = true,
--startify = true,
--treesitter = true,
--lsp_saga = true,
--telescope = true,
--toggleterm = true,
--packer = true,
--},
--styles = {
--strings = "bold", -- Style that is applied to strings
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
--tema = "everforest",
----tema = "material",
--estilo = "burbuja",
--}

-- Rose pine
--require("rose-pine").setup({
-----@usage 'main'|'moon'
----dark_variant = "main",
--dark_variant = "moon",
--bold_vert_split = false,
--dim_nc_background = false,
--disable_background = false,
--disable_float_background = false,
--disable_italics = false,
-----@usage string hex value or named color from rosepinetheme.com/palette
--groups = {
--background = "base",
--panel = "surface",
--border = "highlight_med",
--comment = "muted",
--link = "iris",
--punctuation = "subtle",

--error = "love",
--hint = "iris",
--info = "foam",
--warn = "gold",

--headings = {
--h1 = "iris",
--h2 = "foam",
--h3 = "rose",
--h4 = "gold",
--h5 = "pine",
--h6 = "foam",
--},
--},
--highlight_groups = {
----LspCodeLens = { bg = "#000000", style = "italic" },
--DiagnosticUnderlineError = { bg = "NONE", style = "underline" },
--DiagnosticUnderlineWarn = { bg = "NONE", style = "underline" },
--DiagnosticUnderlineInfo = { bg = "NONE", style = "underline" },
--DiagnosticUnderlineHint = { bg = "NONE", style = "underline" },
--},
--})
--vim.cmd("colorscheme rose-pine")
--local opciones_lualine = {
--tema = "rose-pine",
--estilo = "burbuja",
--}

return opciones_lualine
