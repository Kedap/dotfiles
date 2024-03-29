local dap = require "dap"
-- dap.adapters.lldb = {
--   type = "executable",
--   command = "/usr/bin/lldb-vscode", -- adjust as needed, must be absolute path
--   name = "lldb",
-- }

dap.adapters.codelldb = {
  type = "server",
  -- host = "127.0.0.1",
  -- port = 13000,
  port = "${port}",
  executable = {
    -- CHANGE THIS to your path!
    command = "/usr/bin/codelldb",
    args = { "--port", "${port}" },

    -- On windows you may have to uncomment this:
    detached = false,
  },
}

dap.configurations.rust = {
  {
    name = "Ejecutar",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input("Ruta del ejecutable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
    args = {},

    -- 💀
    -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
    --
    --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
    --
    -- Otherwise you might get the following error:
    --
    --    Error on launch: Failed to attach to the target process
    --
    -- But you should be aware of the implications:
    -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
    -- runInTerminal = false,
  },
  {
    name = "Ejecutar con argumentos",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input("Ruta del ejecutable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = true,
    args = function()
      local args_string = vim.fn.input "Argumentos: "
      return vim.split(args_string, " +")
    end,

    -- 💀
    -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
    --
    --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
    --
    -- Otherwise you might get the following error:
    --
    --    Error on launch: Failed to attach to the target process
    --
    -- But you should be aware of the implications:
    -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
    -- runInTerminal = false,
  },
}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input("Ruta del ejecutable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
  },
}

-- If you want to use this for Rust and C, add something like this:

dap.configurations.c = dap.configurations.cpp
-- dap.configurations.rust = dap.configurations.cpp
-- dap.configurations.cpp = dap.configurations.rust

-- dap.listeners.before.event_initialized["split_winow"] = function()
--   vim.cmd "vs"
-- end
