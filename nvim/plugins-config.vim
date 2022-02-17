"Configuracion de los plugins
let g:airline_powerline_fonts = 1
let g:indentLine_char = '▏' "Lineas para brackets
let g:airline#extensions#tabline#enabled = 1
let NERDTreeShowHidden=1

" rust fmt
let g:rustfmt_autosave =  1

"go fmt
"let g:go_fmt_command = "goimports"

" vimtex
let g:vimtex_view_general_viewer = 'evince'
let g:vimtex_view_general_options
    \ = '-reuse-instance -forward-search @tex @line @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'

" Arcoiris
"let g:rainbow_active = 1
"let not_rainbow = ["nerdtree", "toggleterm", "floaterm"]
"au Filetype * if index(not_rainbow, &ft) < 0|call rainbow#load()|endif
"au Filetype nerdtree,floaterm,toggleterm call rainbow#inactivate()

"fzf
"let g:fzf_preview_use_dev_icons = 1
let g:fzf_preview_window = ['right:50%', 'ctrl-/']
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=? -complete=dir GFiles
  \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)


"configuracion para trabajar con typescript y js
"au BufNewFile,BufRead *.ts setlocal filetype=typescript
"au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=250}
augroup end

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
highlight SignifySignAdd                  ctermbg=green  guifg=#000000 guibg=#4caf50
highlight SignifySignDelete ctermfg=black ctermbg=red    guifg=#000000 guibg=#b71c1c
highlight SignifySignChange ctermfg=black ctermbg=yellow guifg=#000000 guibg=#ffa000

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
