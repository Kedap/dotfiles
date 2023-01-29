-- vim.fn.sign_define("DapBreakpoint", { text = "🛑", texthl = "", linehl = "", numhl = "" })
vim.fn.sign_define("DapBreakpoint", { text = "●", texthl = "", linehl = "", numhl = "" })
vim.fn.sign_define("DapStopped", { text = "", texthl = "debugPC", linehl = "", numhl = "" })
require "config.dap.depurardor-conf"
require "config.dap.ui-conf"
require "config.dap.c-cmas-rust-debug"
require "config.dap.shabascript"
require "config.dap.goulang"

-- Para mejor configuracion https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation#Python
