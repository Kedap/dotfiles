vim.o.background = "dark"
local onedarkpro = require("onedarkpro")
onedarkpro.setup({
  -- Theme can be overwritten with 'onedark' or 'onelight' as a string
  theme = function()
    if vim.o.background == "dark" then
      return "onedark"
    else
      return "onelight"
    end
  end,
  hlgroups = {
    DiagnosticUnderlineError = { bg = "NONE", style = "underline" },
    DiagnosticUnderlineWarn = { bg = "NONE", style = "underline" },
    DiagnosticUnderlineInfo = { bg = "NONE", style = "underline" },
    DiagnosticUnderlineHint = { bg = "NONE", style = "underline" },
  },
  plugins = { -- Override which plugins highlight groups are loaded
    hop = true,
    indentline = true,
    dashboard = true,
    nvim_dap = true,
    nvim_dap_ui = true,
    nvim_ts_rainbow = true,
    trouble_nvim = true,
    which_key_nvim = true,
    native_lsp = true,
    startify = true,
    treesitter = true,
    lsp_saga = true,
    telescope = true,
    toggleterm = true,
    packer = true,
  },
  styles = {
    strings = "bold", -- Style that is applied to strings
    comments = "italic", -- Style that is applied to comments
    keywords = "bold,italic", -- Style that is applied to keywords
    functions = "NONE", -- Style that is applied to functions
    variables = "NONE", -- Style that is applied to variables
  },
  options = {
    bold = true, -- Use the themes opinionated bold styles?
    italic = true, -- Use the themes opinionated italic styles?
    underline = true, -- Use the themes opinionated underline styles?
    undercurl = true, -- Use the themes opinionated undercurl styles?
    cursorline = true, -- Use cursorline highlighting?
    transparency = false, -- Use a transparent background?
    terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
    window_unfocussed_color = false, -- When the window is out of focus, change the normal background?
  },
})
onedarkpro.load()

local opciones_lualine = {
  tema = "everforest",
  --tema = "material",
  estilo = "buble",
}

return opciones_lualine
