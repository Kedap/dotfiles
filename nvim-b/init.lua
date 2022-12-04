-- Para mejorar el arranque
local impati_ok, impatient = pcall(require, "impatient")
if impati_ok then
  impatient.enable_profile()
end

require "plugins"
require "opciones"
require "atajos"
require "neovim-tree-conf"
require "treesitter-config"
require "default_setups"
require "pairs_conf"
require "indent-conf"
require "org-conf"
require "lsp"
require "barritas"
require "rust-conf"
require "formato-conf"
require "telescopio-config"
require "notificaciones-config"
require "nolua"
require "depuracion-conf"
require "colorizer-config"
require "ver-diff"
require "bienvenida"
require "temas"
require "lineabuffer"
-- require "pantalla-sal"
