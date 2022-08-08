require("dap-python").setup("~/.virtualenvs/debugpy/bin/python")
local dap, dapui = require("dap"), require("dapui")
dap.adapters.python = {
  type = "executable",
  command = "/home/sno0bwy/.virtualenvs/debugpy/bin/python",
  args = { "-m", "debugpy.adapter" },
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
