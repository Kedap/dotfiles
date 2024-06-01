local linea = {
  tema = require("neofusion.lualine"),
  estilo = "burbuja",
}

vim.o.background = "dark"
vim.cmd([[ colorscheme neofusion ]])

return linea
