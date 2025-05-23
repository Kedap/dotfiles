local opciones = require("config.temas")

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
        -- Lsp server name .
        function()
          local msg = "Sin LSP"
          local buf_ft = vim.api.nvim_get_option_value("filetype", { buf = 0 })
          local clients = vim.lsp.get_clients()
          if next(clients) == nil then
            return msg
          end
          for _, client in ipairs(clients) do
            local filetypes = client.config.filetypes
            if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
              return client.name
            end
          end
          return msg
        end,
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
