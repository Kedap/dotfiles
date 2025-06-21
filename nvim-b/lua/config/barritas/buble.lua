local opciones = require("config.temas")
local utils = require("utils")

require("lualine").setup({
  options = {
    icons_enabled = true,
    theme = opciones.tema,
    section_separators = { left = "", right = "" },
    component_separators = { left = "", right = "" },

    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { { "branch", icon = "" }, "diff", "diagnostics" },
    lualine_c = {
      { "filename", symbols = { modified = " []", readonly = " [󰃀]", unnamed = " [Sin nombre]" } },
    },
    lualine_x = {
      "encoding",
      "fileformat",

      {
        utils.get_lsp_client_name(),
        icon = " ",
        color = { fg = "#ffffff" },
      },

      "filetype",
    },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
  extensions = { "nvim-tree", "toggleterm", "fugitive", "quickfix", "nvim-dap-ui" },
})
