"Atajos pros
let mapleader = ' '

"atajos importantes
nmap <leader>w :w<CR>
nmap <leader>s :wq!<CR>
nmap <leader>q :q!<CR>
nmap <leader>r o<Esc>
nmap <leader>f :Files<CR>

"find
nmap <leader>h :History<CR>
nmap <leader>a :Ag<CR>
nmap <leader>l <Plug>(easymotion-s2)
"nmap <leader>fs :%s/

"plugin (vimplug)
nmap <leader>pi :PlugInstall<CR>
nmap <leader>pc :PlugClean<CR>
nmap <leader>pu :PlugUpdate<CR>

"atajos terminal
nmap <leader>tf :FloatermNew<CR>
nmap <leader>tt :ToggleTerm<CR>

nmap <leader>n :NERDTreeToggle<CR>
