local opciones_lualine = {
  tema = "auto",
  estilo = "burbuja",
}

--- Default configuration
require("sweetie").setup {
  pumblend = {
    enable = true,
    transparency_amount = 20,
  },
  overrides = {},
  integrations = {
    lazy = true,
    -- neorg = true,
    neogit = true,
    telescope = true,
  },
  cursor_color = true,
  terminal_colors = true,
}
vim.cmd.colorscheme "sweetie"

return opciones_lualine
