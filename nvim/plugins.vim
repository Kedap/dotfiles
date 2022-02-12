"inicio de la lista de plugins
call plug#begin ('~/.local/share/nvim/pluged')
"temas

Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim' "nord
Plug 'drewtempelmeyer/palenight.vim' "El chilo

"Iconos
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

"line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Plugins
Plug 'lilydjwg/colorizer'
Plug 'Yggdroot/indentLine'
Plug 'editorconfig/editorconfig-vim'
"Plug 'vimwiki/vimwiki'

"movimiento
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-repeat'

"nerdtree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

"Integracion con git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

"Codigo
Plug 'sheerun/vim-polyglot'
Plug 'honza/vim-snippets' "Instala coc-snippets para que funcionen estos snippets
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'lervag/vimtex'
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'gillescastel/latex-snippets'
Plug 'natebosch/dartlang-snippets'
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
"Para el codigo typescript/javascript
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'

"terminal
Plug 'voldikss/vim-floaterm'
Plug 'akinsho/toggleterm.nvim'

"de pana
Plug 'mhinz/vim-startify'
"Plug 'frazrepo/vim-rainbow'

call plug#end()
