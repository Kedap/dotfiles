local opciones = require("config.temas")

local themes = {
  novoline = "config.barritas.novoline",
  eviline = "config.barritas.malvado",
  burbuja = "config.barritas.burbuja",
  buble = "config.barritas.buble",
}

local theme_to_load = themes[opciones.estilo]

if theme_to_load then
  require(theme_to_load)
else
  require("lualine").setup({})
end
