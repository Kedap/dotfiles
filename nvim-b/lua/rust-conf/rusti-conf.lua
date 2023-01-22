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
  -- debugging stuff
  dap = {
    adapter = {
      type = "executable",
      command = "lldb-vscode",
      name = "rt_lldb",
    },
  },
}

require("rust-tools").setup(opts)
