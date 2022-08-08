local opciones = require("temas.init")

if opciones.estilo == "novoline" then
  require("barritas.novoline")
elseif opciones.estilo == "eviline" then
  require("barritas.malvado")
elseif opciones.estilo == "burbuja" then
  require("barritas.burbuja")
elseif opciones.estilo == "buble" then
  require("barritas.buble")
else
  require("lualine").setup({})
end
