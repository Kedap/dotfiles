local dap = require "dap"
require("dap-vscode-js").setup {
  debugger_path = vim.fn.stdpath "data" .. "/mason/packages/js-debug-adapter",
  debugger_cmd = { "js-debug-adapter" },
  adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" }, -- which adapters to register in nvim-dap
}

for _, language in ipairs { "typescript", "javascript" } do
  dap.configurations[language] = {
    {
      type = "pwa-node",
      request = "launch",
      name = "Ejecutar este archivo",
      program = "${file}",
      cwd = "${workspaceFolder}",
    },
    {
      type = "pwa-node",
      request = "launch",
      name = "Ejecutar este archivo con argumentos",
      program = "${file}",
      cwd = "${workspaceFolder}",
      args = function()
        local args_string = vim.fn.input "Argumentos: "
        return vim.split(args_string, " +")
      end,
    },
    {
      type = "pwa-node",
      request = "attach",
      name = "Attach",
      processId = require("dap.utils").pick_process,
      cwd = "${workspaceFolder}",
    },
    -- {
    --   type = "pwa-node",
    --   request = "launch",
    --   name = "Debug Jest Tests",
    --   -- trace = true, -- include debugger info
    --   runtimeExecutable = "node",
    --   runtimeArgs = {
    --     "./node_modules/jest/bin/jest.js",
    --     "--runInBand",
    --   },
    --   rootPath = "${workspaceFolder}",
    --   cwd = "${workspaceFolder}",
    --   console = "integratedTerminal",
    --   internalConsoleOptions = "neverOpen",
    -- },
  }
end
