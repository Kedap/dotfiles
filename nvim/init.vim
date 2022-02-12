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
filetype plugin indent on
highlight ColoColumn ctermbg=0 guibg=lightgrey

"Cargando la lista de plugins
source ~/.config/nvim/plugins.vim

"Configuracion de los temas
source ~/.config/nvim/temas.vim

"configuracion de los plugins
source ~/.config/nvim/plugins-config.vim

"Atajos del coc
source ~/.config/nvim/coc.vim

"Cargando atajos
source ~/.config/nvim/atajos.vim
