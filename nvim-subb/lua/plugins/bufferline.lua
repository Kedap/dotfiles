return {
  "akinsho/bufferline.nvim",
  event = "BufRead",
  dependencies = { "nvim-tree/nvim-web-devicons", name = "neovim-web-devicons" },
  opts = {
    options = {
      indicator = {
        style = "underline",
      },
      diagnostics = "nvim_lsp",
      diagnostics_update_in_insert = true,
      diagnostics_indicator = function(count, level, diagnostics_dict, context)
        local s = " "
        for e, n in pairs(diagnostics_dict) do
          local sym = e == "error" and " " or (e == "warning" and " " or "")
          s = s .. n .. sym
        end
        return s
      end,
      -- separator_style = "slant" | "thick" | "thin" | { 'any', 'any' },
      separator_style = "slant",
    },
  },
}
