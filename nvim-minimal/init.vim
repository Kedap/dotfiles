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
set spelllang=es
set nolazyredraw
filetype plugin indent on
highlight ColoColumn ctermbg=0 guibg=lightgrey

"Aqui empiezan los atajos
let mapleader = ' '
nmap <leader>w :w<CR>
nmap <leader>s :x!<CR>
nmap <leader>q :q!<CR>
nmap <leader>r o<Esc>
nmap <leader>R i<CR><Esc>
nmap \ :noh<CR><Esc>
