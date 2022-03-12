vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = false }
-- Como el tmux
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Scroll fast
map("n", "<C-J>", "50j", opts)
map("n", "<C-K>", "50k", opts)

-- De cajon
map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>s", ":x!<CR>", opts)
map("n", "<leader>q", ":q!<CR>", opts)
map("n", "<leader>r", "o<Esc>", opts)
map("n", "<leader>R", "i<CR><Esc>", opts)

-- Plugin manager
map("n", "<leader>pi", ":PackerInstall<CR>", opts)
map("n", "<leader>pc", ":PackerClean<CR>", opts)
map("n", "<leader>pu", ":PackerSync<CR>", opts)

--Terminal
map("n", "<leader>tf", "<cmd>FloatermNew<CR>", opts)
map("n", "<leader>tt", "<cmd>ToggleTerm<CR>", opts)

-- Find
map("n", "<leader>f", ":Files<CR>", opts)
map("n", "<leader>a", ":Ag<CR>", opts)
map("n", "<leader>n", ":NERDTreeToggle<CR>", opts)
map("n", "<leader>l", ":HopChar2<CR>", opts)

-- LSP mapeos
map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
map("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", opts)
map("n", "gr", "<cmd>Lspsaga rename<CR>", opts)
map("n", "ga", "<cmd>Lspsaga code_action<CR>", opts)
map("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
map("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
map("n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>", {})
map("n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<cr>", {})

-- Codigo
map("n", "<leader>ñfr", ":FlutterRun<CR>", opts)
map("n", "<leader>ñfh", ":FlutterHotReload<CR>", opts)
map("n", "<leader>ñfd", ":FlutterVSplit<CR>", opts)
