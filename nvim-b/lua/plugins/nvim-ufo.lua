return {
  "kevinhwang91/nvim-ufo",
  keys = {
    { "zr", "<cmd>lua require('ufo').openAllFolds()<cr>", desc = "Abrir todos los folds" },
    { "zm", "<cmd>lua require('ufo').closeAllFolds()<cr>", desc = "Cerrar todos los folds" },
  },
  dependencies = "kevinhwang91/promise-async",
  config = function()
    require("ufo").setup({
      provider_selector = function(bufnr, filetype, buftype)
        return { "treesitter", "indent" }
      end,
    })

    vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true
  end,
}
