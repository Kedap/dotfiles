"Atajos pros
let mapleader = ' '

"atajos importantes
nmap <leader>w :w<CR>
nmap <leader>s :wq!<CR>
nmap <leader>q :q!<CR>
nmap <leader>r o<Esc>

"find (encontrar)
nmap <leader>ff :FzfPreviewProjectFiles<CR>
nmap <leader>fg :Ag<CR>
nmap <leader>fl <Plug>(easymotion-s2)
nmap <leader>fs :%s/

"plugin (vimplug)
nmap <leader>pi :PlugInstall<CR>
nmap <leader>pc :PlugClean<CR>

nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>t :FloatermNew<CR>
