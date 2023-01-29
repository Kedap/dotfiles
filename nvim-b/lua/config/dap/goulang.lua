local dap = require "dap"
dap.adapters.go = {
  type = "executable",
  command = "node",
  args = { os.getenv "HOME" .. "/.local/share/nvim/mason/packages/go-debug-adapter/extension/dist/debugAdapter.js" },
}
dap.configurations.go = {
  {
    type = "go",
    name = "Ejecutar",
    request = "launch",
    showLog = false,
    program = "${file}",
    dlvToolPath = vim.fn.exepath "dlv", -- Adjust to where delve is installed
  },
}
