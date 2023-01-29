local opciones = require("config.temas")

if opciones.estilo == "novoline" then
  require("config.barritas.novoline")
elseif opciones.estilo == "eviline" then
  require("config.barritas.malvado")
elseif opciones.estilo == "burbuja" then
  require("config.barritas.burbuja")
elseif opciones.estilo == "buble" then
  require("config.barritas.buble")
else
  require("lualine").setup({})
end
