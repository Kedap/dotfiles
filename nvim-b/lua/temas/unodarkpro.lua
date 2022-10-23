require("onedarkpro").setup({
  dark_theme = "onedark", -- The default dark theme
  plugins = { -- Override which plugin highlight groups are loaded
    -- See the Supported Plugins section for a list of available plugins
  },
  styles = {
    strings = "bold", -- Style that is applied to strings
    comments = "italic", -- Style that is applied to comments
    keywords = "bold,italic", -- Style that is applied to keywords
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
vim.cmd("colorscheme onedarkpro")  -- Lua

local opciones_lualine = {
  tema = "onedarkpro",
  -- tema = "everforest",
  --tema = "material",
  estilo = "buble",
}

return opciones_lualine
