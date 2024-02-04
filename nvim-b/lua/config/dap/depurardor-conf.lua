--Configuracon para Python
require("dap-python").setup("~/.virtualenvs/debugpy/bin/python")
local dap, dapui = require("dap"), require("dapui")
dap.adapters.python = {
  type = "executable",
  command = "/home/kedap/.virtualenvs/debugpy/bin/python",
  args = { "-m", "debugpy.adapter" },
}

-- Configuracion para php
dap.adapters.php = {
  type = "executable",
  command = "node",
  args = { "/home/kedap/.local/share/nvim/mason/packages/php-debug-adapter/extension/out/phpDebug.js" },
}
dap.configurations.php = {
  {
    type = "php",
    request = "launch",
    name = "Listen for Xdebug",
    -- port = 9000,
    port = 9003,
  },
}

require("dap-ruby").setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
