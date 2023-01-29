require("ayu").setup {
  mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
}

local opciones_lualine = {
  tema = "ayu_dark",
  estilo = "burbuja",
}
require('ayu').colorscheme()
return opciones_lualine
