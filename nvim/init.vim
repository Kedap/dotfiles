syntax on
set nocompatible
set number
set fileencoding=utf-8
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
set guifont=Cascadia\ Code\ 10
set spelllang=es
set nolazyredraw
filetype plugin indent on
highlight ColoColumn ctermbg=0 guibg=lightgrey

"Cargando la lista de plugins
source ~/.config/nvim/plugins.vim

"Configuracion de los temas
source ~/.config/nvim/temas.vim

"Atajos del coc
source ~/.config/nvim/coc.vim

"configuracion de los plugins
source ~/.config/nvim/plugins-config.vim

"Configuracion que se encuentra en lua
source ~/.config/nvim/lua.vim

"Cargando atajos
source ~/.config/nvim/atajos.vim
