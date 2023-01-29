vim.cmd "filetype plugin indent on"
vim.wo.number = true
vim.o.fileencoding = "utf-8"
vim.o.mouse = "a"
vim.o.errorbells = false
vim.o.sw = 2
vim.o.expandtab = true
vim.o.smartindent = true
vim.wo.relativenumber = true
vim.wo.wrap = false
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.clipboard = "unnamedplus"
vim.o.showmatch = true
vim.o.cursorline = true
vim.opt.termguicolors = true
vim.o.colorcolumn = "105"
vim.o.backup = false
vim.o.spelllang = "es"
vim.o.lazyredraw = true
vim.g.mapleader = " "
vim.cmd "highlight ColoColumn ctermbg=0 guibg=lightgrey"
vim.cmd [[
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup END
]]
