"Configuracion de los plugins
let g:airline_powerline_fonts = 1
let g:indentLine_char = '▏' "Lineas para brackets
let g:airline#extensions#tabline#enabled = 1
let NERDTreeShowHidden=1

" rust fmt
let g:rustfmt_autosave =  1

"go fmt
let g:go_fmt_command = "goimports"

" vimtex
let g:vimtex_view_general_viewer = 'atril'
let g:vimtex_view_general_options
    \ = '-reuse-instance -forward-search @tex @line @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'

"Integracion con gita
" Change these if you want
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1

" If you like colors instead
highlight SignifySignAdd                  ctermbg=green                guibg=#00ff00
highlight SignifySignDelete ctermfg=black ctermbg=red    guifg=#ffffff guibg=#ff0000
highlight SignifySignChange ctermfg=black ctermbg=yellow guifg=#000000 guibg=#ffff00

"Configuracion de startify
"let g:startify_custom_header = [
"\ ' _   _       _                 _             _               ',
"\ '| \ | |_   _(_)_ __ ___       | |_   _  __ _| | _____ _ __   ',
"\ '|  \| \ \ / / | `_ ` _ \   _  | | | | |/ _` | |/ / _ \ !__|  ',
"\ '| |\  |\ V /| | | | | | | | |_| | |_| | (_| |   <  __/ |     ',
"\ '|_| \_| \_/ |_|_| |_| |_|  \___/ \__,_|\__,_|_|\_\___|_|     ',
"\ '',
"\ '',
"\ ]

let g:startify_custom_header =  [
  \ '   -{ Bienvenido sempai }-',
  \ '',
  \ '',
  \ '    ⠄⠄⠄⢰⣧⣼⣯⠄⣸⣠⣶⣶⣦⣾⠄⠄⠄⠄⡀⠄⢀⣿⣿⠄⠄⠄⢸⡇⠄⠄ ',
  \ '    ⠄⠄⠄⣾⣿⠿⠿⠶⠿⢿⣿⣿⣿⣿⣦⣤⣄⢀⡅⢠⣾⣛⡉⠄⠄⠄⠸⢀⣿⠄ ',
  \ '    ⠄⠄⢀⡋⣡⣴⣶⣶⡀⠄⠄⠙⢿⣿⣿⣿⣿⣿⣴⣿⣿⣿⢃⣤⣄⣀⣥⣿⣿⠄ ',
  \ '    ⠄⠄⢸⣇⠻⣿⣿⣿⣧⣀⢀⣠⡌⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠿⣿⣿⣿⠄ ',
  \ '    ⠄⢀⢸⣿⣷⣤⣤⣤⣬⣙⣛⢿⣿⣿⣿⣿⣿⣿⡿⣿⣿⡍⠄⠄⢀⣤⣄⠉⠋⣰ ',
  \ '    ⠄⣼⣖⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⢇⣿⣿⡷⠶⠶⢿⣿⣿⠇⢀⣤ ',
  \ '    ⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣷⣶⣥⣴⣿⡗ ',
  \ '    ⢀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠄ ',
  \ '    ⢸⣿⣦⣌⣛⣻⣿⣿⣧⠙⠛⠛⡭⠅⠒⠦⠭⣭⡻⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠄ ',
  \ '    ⠘⣿⣿⣿⣿⣿⣿⣿⣿⡆⠄⠄⠄⠄⠄⠄⠄⠄⠹⠈⢋⣽⣿⣿⣿⣿⣵⣾⠃⠄ ',
  \ '    ⠄⠘⣿⣿⣿⣿⣿⣿⣿⣿⠄⣴⣿⣶⣄⠄⣴⣶⠄⢀⣾⣿⣿⣿⣿⣿⣿⠃⠄⠄ ',
  \ '    ⠄⠄⠈⠻⣿⣿⣿⣿⣿⣿⡄⢻⣿⣿⣿⠄⣿⣿⡀⣾⣿⣿⣿⣿⣛⠛⠁⠄⠄⠄ ',
  \ '    ⠄⠄⠄⠄⠈⠛⢿⣿⣿⣿⠁⠞⢿⣿⣿⡄⢿⣿⡇⣸⣿⣿⠿⠛⠁⠄⠄⠄⠄⠄ ',
  \ '    ⠄⠄⠄⠄⠄⠄⠄⠉⠻⣿⣿⣾⣦⡙⠻⣷⣾⣿⠃⠿⠋⠁⠄⠄⠄⠄⠄⢀⣠⣴ ',
  \ '    ⣿⣿⣿⣶⣶⣮⣥⣒⠲⢮⣝⡿⣿⣿⡆⣿⡿⠃⠄⠄⠄⠄⠄⠄⠄⣠⣴⣿⣿⣿ ',
\ '',
\ '',
\ ]

let g:startify_bookmarks = [
            \ { 'a': '~/Documentos/repos/apmpkg' },
            \ { 'r': '~/Documentos/repos' },
            \ { 'c': '~/.config/nvim' },
            \ { 'z': '~/.zshrc' },
            \ { 't': '~/tempo' },
            \ '~/Documentos/repos/syncre',
            \ '~/Documentos/repos/shashi',
            \ ]
let g:startify_lists = [
          \ { 'type': 'bookmarks', 'header': ['   Marcadores']      },
          \ { 'type': 'files',     'header': ['   Archivos Recientes']            },
          \ { 'type': 'dir',       'header': ['   Archivos de '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ ]
