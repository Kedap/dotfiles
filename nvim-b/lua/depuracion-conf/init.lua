-- vim.fn.sign_define("DapBreakpoint", { text = "🛑", texthl = "", linehl = "", numhl = "" })
vim.fn.sign_define("DapBreakpoint", { text = "●", texthl = "", linehl = "", numhl = "" })
vim.fn.sign_define("DapStopped", { text = "", texthl = "debugPC", linehl = "", numhl = "" })
require "depuracion-conf.depurardor-conf"
require "depuracion-conf.ui-conf"
require "depuracion-conf.c-cmas-rust-debug"
require "depuracion-conf.shabascript"
require "depuracion-conf.goulang"

-- Para mejor configuracion https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation#Python
