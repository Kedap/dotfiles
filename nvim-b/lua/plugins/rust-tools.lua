return {
  "simrat39/rust-tools.nvim",
  ft = "rust",
  dependencies = { "neovim/nvim-lspconfig", "nvim-lua/plenary.nvim" },
  opts = {
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
  },
}
