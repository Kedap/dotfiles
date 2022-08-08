local opts = {
  tools = {
    hover_with_actions = false,
  },
  server = {
    standalone = true,
    settings = {
      ["rust-analyzer"] = {
        checkOnSave = {
          command = "clippy",
        },
      },
    },
  },
}

require("rust-tools").setup(opts)
