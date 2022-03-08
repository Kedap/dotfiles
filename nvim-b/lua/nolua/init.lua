-- Configuracion de aplicaciones no escritos en lua
vim.g.WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
vim.g.WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1

-- Configuracion para git-blame
vim.cmd([[let g:gitblame_message_template = '<author> (<date>): <summary>']])

-- Configuracion de Startify
vim.cmd([[
let g:startify_custom_header =  [
  \ '   -{ Bienvenido sempai }-',
  \ '',
  \ '   ⠄⠄⠄⠄ ⠄⠄⠄⠄⠄   ⠄⠄⠄⠄⠄⠄',
  \ '   ⠄⠄⡔⠙⠢⡀⠄⠄⠄⢀⠼⠅⠈⢂⠄⠄⠄⠄⠄',
  \ '   ⠄⠄⡌⠄⢰⠉⢙⢗⣲⡖⡋⢐⡺⡄⠈⢆⠄⠄⠄',
  \ '   ⠄⡜⠄⢀⠆⢠⣿⣿⣿⣿⢡⢣⢿⡱⡀⠈⠆⠄⠄',
  \ '   ⠄⠧⠤⠂⠄⣼⢧⢻⣿⣿⣞⢸⣮⠳⣕⢤⡆⠄⠄',
  \ '   ⢺⣿⣿⣶⣦⡇⡌⣰⣍⠚⢿⠄⢩⣧⠉⢷⡇⠄⠄',
  \ '   ⠘⣿⣿⣯⡙⣧⢎⢨⣶⣶⣶⣶⢸⣼⡻⡎⡇⠄⠄',
  \ '   ⠄⠘⣿⣿⣷⡀⠎⡮⡙⠶⠟⣫⣶⠛⠧⠁⠄⠄⠄',
  \ '   ⠄⠄⠘⣿⣿⣿⣦⣤⡀⢿⣿⣿⣿⣄⠄⠄⠄⠄⠄',
  \ '   ⠄⠄⠄⠈⢿⣿⣿⣿⣿⣷⣯⣿⣿⣷⣾⣿⣷⡄⠄',
  \ '   ⠄⠄⠄⠄⠄⢻⠏⣼⣿⣿⣿⣿⡿⣿⣿⣏⢾⠇⠄',
  \ '   ⠄⠄⠄⠄⠄⠈⡼⠿⠿⢿⣿⣦⡝⣿⣿⣿⠷⢀⠄',
  \ '   ⠄⠄⠄⠄⠄⠄⡇⠄⠄⠄⠈⠻⠇⠿⠋⠄⠄⢘⡆',
  \ '   ⠄⠄⠄⠄⠄⠄⠱⣀⠄⠄⠄⣀⢼⡀⠄⢀⣀⡜⠄',
  \ '   ⠄⠄⠄⠄⠄⠄⠄⢸⣉⠉⠉⠄⢀⠈⠉⢏⠁⠄⠄',
  \ '   ⠄⠄⠄⠄⠄⠄⡰⠃⠄⠄⠄⠄⢸⠄⠄⢸⣧⠄⠄',
  \ '   ⠄⠄⠄⠄⠄⣼⣧⠄⠄⠄⠄⠄⣼⠄⠄⡘⣿⡆⠄',
  \ '   ⠄⠄⠄⢀⣼⣿⡙⣷⡄⠄⠄⠄⠃⠄⢠⣿⢸⣿⡀',
  \ '   ⠄⠄⢀⣾⣿⣿⣷⣝⠿⡀⠄⠄⠄⢀⡞⢍⣼⣿⠇',
  \ '   ⠄⠄⣼⣿⣿⣿⣿⣿⣷⣄⠄⠄⠠⡊⠴⠋⠹⡜⠄',
  \ '   ⠄⠄⣿⣿⣿⣿⣿⣿⣿⣿⡆⣤⣾⣿⣿⣧⠹⠄⠄',
\ '',
\ '',
\ ]

let g:startify_bookmarks = [
            \ { 'r': '~/Documentos/repos' },
            \ { 'c': '~/.config/nvim' },
            \ { 'z': '~/.zshrc' },
            \ { 't': '~/tempo' },
            \ ]
let g:startify_lists = [
          \ { 'type': 'bookmarks', 'header': ['   Marcadores']      },
          \ { 'type': 'files',     'header': ['   Archivos Recientes']            },
          \ { 'type': 'dir',       'header': ['   Archivos de '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ ]
]])
