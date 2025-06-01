return {
  "saecki/crates.nvim",
  tag = "stable",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = { "BufRead Cargo.toml" },
  config = function()
    require("crates").setup({
      lsp = {
        enabled = true,
        actions = true,
        completion = true,
        hover = true,
      },
      completion = {
        cmp = {
          enabled = true,
        },
        crates = {
          enabled = true,
          max_results = 8,
          min_chars = 3,
        },
      },
    })
  end,
}
