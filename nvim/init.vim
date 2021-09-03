syntax on
set number
set mouse=a
set noerrorbells
set sw=2
set expandtab
set smartindent
set rnu
set nowrap
set incsearch
set ignorecase
set clipboard=unnamedplus
set showmatch
set cursorline
set termguicolors
set colorcolumn=110
set nobackup
set showmatch
filetype plugin indent on
highlight ColoColumn ctermbg=0 guibg=lightgrey

call plug#begin ('~/.local/share/nvim/pluged')
"En vimawesome.com es un exelente lugar para conseguir mas plugins

"Temas xd
"https://vimcolorschemes.com/ es un buen lugar para conseguir temas
Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next' "solarizado
Plug 'sainnhe/sonokai' "el andromeda
Plug 'dunstontc/vim-vscode-theme' "El tema de vscode
Plug 'arcticicestudio/nord-vim' "nord

"Plugins
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'lilydjwg/colorizer'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'honza/vim-snippets' "Instala coc-snippets para que funcionen estos snippets
Plug 'gillescastel/latex-snippets'
Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'editorconfig/editorconfig-vim'
Plug 'Xuyuanp/nerdtree-git-plugin'

"Integracion con git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

"Codigo
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'lervag/vimtex'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"de pana
Plug 'alec-gibson/nvim-tetris'
Plug 'gregsexton/vimcalc'
Plug 'voldikss/vim-floaterm'
Plug 'mhinz/vim-startify'

call plug#end()

"configuracion de los temas

"configuracion de gruvbox
"set background=dark
"let g:gruvbox="medium"
"colorscheme gruvbox

"Tema de nord
colorscheme nord
hi Comment gui=italic
hi Comment cterm=italic
hi Type    gui=italic
hi Type    cterm=italic
let g:nord_italic = 1

"configuracion para oceanic (solarizado)
"colorscheme OceanicNext

"confugracion para sonokai
"let g:sonokai_style = 'andromeda'
"let g:sonokai_enable_italic = 1
"colorscheme sonokai

"Configuracion para el tema de vscode
"colorscheme dark_plus

"configuraciones para la airline
"se necesita de powerline-fonts package
"let g:airline_theme='gruvbox'
let g:airline_theme='nord'
"let g:airline_theme='behelit'
"let g:airline_theme='deus'


let g:airline_powerline_fonts = 1
let g:indentLine_char = '▏' "Lineas para brackets
"confugracion de la barra de arriba
let g:airline#extensions#tabline#enabled = 1

"Atajos pros
let mapleader = ' '
nmap <leader>w :w<CR>
nmap <leader>s :wq!<CR>
nmap <leader>q :q!<CR>
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>u :FZF<CR>
nmap <leader>g :FloatermNew<CR>
"no se te olvide que con leader cc comentas xd
nmap <leader>p :PlugInstall<CR>
nmap <leader>r o<Esc>
nmap <leader>t <Plug>(easymotion-s2)
nmap <leader><F5> :source ~/.config/nvim/init.vim<CR>

"Atajos del codigo
source ~/.config/nvim/coc.vim

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
let g:startify_custom_header = [
\ ' _   _       _                 _             _               ',
\ '| \ | |_   _(_)_ __ ___       | |_   _  __ _| | _____ _ __   ',
\ '|  \| \ \ / / | `_ ` _ \   _  | | | | |/ _` | |/ / _ \ !__|  ',
\ '| |\  |\ V /| | | | | | | | |_| | |_| | (_| |   <  __/ |     ',
\ '|_| \_| \_/ |_|_| |_| |_|  \___/ \__,_|\__,_|_|\_\___|_|     ',
\ '',
\ '',
\ ]
let g:startify_bookmarks = [
            \ '~/Documentos/repos',
            \ '~/Documentos/repos/syncre',
            \ '~/Documentos/repos/shashi',
            \ { 'c': '~/.config/nvim/init.vim' },
            \ '~/tempo',
            \ { 'z': '~/.zshrc' },
            \ ]
let g:startify_lists = [
          \ { 'type': 'bookmarks', 'header': ['   Marcadores']      },
          \ { 'type': 'files',     'header': ['   Archivos Recientes']            },
          \ { 'type': 'dir',       'header': ['   Archivos de '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ ]
