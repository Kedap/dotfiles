"inicio de la lista de plugins
call plug#begin ('~/.local/share/nvim/pluged')
"temas
"
Plug 'morhetz/gruvbox'
Plug 'sainnhe/sonokai' "el andromeda
Plug 'dunstontc/vim-vscode-theme' "El tema de vscode
Plug 'arcticicestudio/nord-vim' "nord
Plug 'drewtempelmeyer/palenight.vim'

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
Plug 'vimwiki/vimwiki'

"movimiento
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
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
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'gillescastel/latex-snippets'
Plug 'jceb/vim-orgmode'

"terminal
Plug 'voldikss/vim-floaterm'
Plug 'akinsho/toggleterm.nvim'

"de pana
Plug 'mhinz/vim-startify'

call plug#end()
