-- Configuracion de aplicaciones no escritos en lua

-- Configuracion para vimtex
vim.g.vimtex_view_method = "zathura"

-- Configuracion para git-blame
vim.cmd([[let g:gitblame_message_template = '<author> (<date>): <summary>']])

-- Configuracion para markdown preview
vim.g.mkdp_browser = "firefox"

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
