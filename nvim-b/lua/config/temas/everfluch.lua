local everblush = require "everblush"
everblush.setup { nvim_tree = { contrast = false } }
vim.cmd('colorscheme everblush')

local opciones_lualine = {
  tema = "everblush",
  estilo = "burbuja",
}

return opciones_lualine
