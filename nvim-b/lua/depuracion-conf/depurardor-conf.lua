--Configuracon para Python
require("dap-python").setup("~/.virtualenvs/debugpy/bin/python")
local dap, dapui = require("dap"), require("dapui")
dap.adapters.python = {
  type = "executable",
  command = "/home/sno0bwy/.virtualenvs/debugpy/bin/python",
  args = { "-m", "debugpy.adapter" },
}

--Configuracon para JavaScript
dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  args = {'/home/sno0bwy/.local/share/nvim/mason/packages/node-debug2-adapter/out/src/nodeDebug.js'},
}
dap.configurations.javascript = {
  {
    name = 'Launch',
    type = 'node2',
    request = 'launch',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
  },
  {
    -- For this to work you need to make sure the node process is started with the `--inspect` flag.
    name = 'Attach to process',
    type = 'node2',
    request = 'attach',
    processId = require'dap.utils'.pick_process,
  },
}

-- Configuracion para php
dap.adapters.php = {
  type = 'executable',
  command = 'node',
  args = { '/home/sno0bwy/.local/share/nvim/mason/packages/php-debug-adapter/extension/out/phpDebug.js' }
}
dap.configurations.php = {
  {
    type = 'php',
    request = 'launch',
    name = 'Listen for Xdebug',
    port = 9000
  }
}

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
