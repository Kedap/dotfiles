"configuracion de gruvbox
"set background=dark
"let g:gruvbox="medium"
"let g:gruvbox_italic = 1
"colorscheme gruvbox

"Tema de nord
"colorscheme nord
"hi Comment gui=italic
"hi Comment cterm=italic
"hi Type    gui=italic
"hi Type    cterm=italic
"let g:nord_italic = 1

"Configuracion de palenight
"let g:palenight_terminal_italics=1
"set background=dark
"colorscheme palenight

"Configuracion de one dark
"let g:one_allow_italics = 1
"set background=dark
"colorscheme one

"Configuracion para catppuccin
lua << EOF
local catppuccin = require("catppuccin")
catppuccin.setup()
EOF
colorscheme catppuccin

"nightfox
"colorscheme duskfox

"configuraciones para la airline
"se necesita de powerline-fonts package

"let g:airline_theme='deus'
let g:airline_theme='tomorrow'
"let g:airline_theme='wombat'
"let g:airline_theme='bubblegum'
"let g:airline_theme='nord'
"let g:airline_theme = 'palenight'
"let g:airline_theme='one'
