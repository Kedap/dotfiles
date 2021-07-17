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
Plug 'sonph/onehalf', { 'rtp': 'vim' } "vscode
Plug 'mhartington/oceanic-next' "solarizado
Plug 'liuchengxu/space-vim-dark' "el de los comentarios chidos
Plug 'sainnhe/sonokai' "el andromeda

"Plugins
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'lilydjwg/colorizer'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'ddollar/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'honza/vim-snippets'
Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'

"Integracion con git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

"Codigo
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'

"de pana
Plug 'alec-gibson/nvim-tetris'
Plug 'gregsexton/vimcalc'
Plug 'Yggdroot/indentLine'

call plug#end()

"configuracion de los temas

"configuracion de gruvbox
"set background=dark
"let g:gruvbox="hard"
"colorscheme gruvbox

"configuracion para onehalf (vscode)
"set t_Co=256
"set background=dark
"colorscheme onehalfdark

"configuracion para oceanic (solarizado)
"colorscheme OceanicNext

"confugracion para space vim
"colorscheme space-vim-dark
"hi Comment cterm=italic
"hi Normal     ctermbg=NONE guibg=NONE
"hi LineNr     ctermbg=NONE guibg=NONE
"hi SignColumn ctermbg=NONE guibg=NONE
"hi LineNr ctermbg=NONE guibg=NONE

"confugracion para sonokai
let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
colorscheme sonokai

"configuraciones para la airline
"se necesita de powerline-fonts package
"let g:airline_theme='bubblegum'
"let g:airline_theme='oceanicnext'
let g:airline_theme='deus'


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
"no se te olvide que con leader cc comentas xd
nmap <leader>p :PlugInstall<CR>
nmap <leader>r o<Esc>
nmap <leader>t <Plug>(easymotion-s2)
nmap <leader><F5> :source ~/.config/nvim/init.vim<CR>

"Atajos del codigo
source ~/.config/nvim/coc.vim

" rust fmt
let g:rustfmt_autosave =  1

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
