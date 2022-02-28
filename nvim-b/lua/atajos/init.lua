vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = false }
-- Como el tmux
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- De cajon
map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>s", ":x!<CR>", opts)
map("n", "<leader>q", ":q!<CR>", opts)
map("n", "<leader>r", "o<Esc>", opts)
map("n", "<leader>R", "i<CR><Esc>", opts)
map("n", "<leader>n", ":NERDTreeToggle<CR>", opts)

-- Plugin manager
map("n", "<leader>pi", ":PackerInstall<CR>", opts)
map("n", "<leader>pc", ":PackerClean<CR>", opts)
map("n", "<leader>pu", ":PackerSync<CR>", opts)

--Terminal
map("n", "tf", "<cmd>FloatermNew<CR>", opts)
map("n", "tt", "<cmd>ToggleTerm<CR>", opts)

-- Find
map("n", "<leader>f", ":Files<CR>", opts)
map("n", "<leader>a", ":Ag<CR>", opts)

-- LSP mapeos
map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
map("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
map("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
map("n", "gr", "<cmd>Lspsaga rename<CR>", opts)

--Codigos
map("n", "<leader>ñnf", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
map("n", "<leader>ñfr", ":FlutterRun<CR>", opts)
map("n", "<leader>ñfh", ":FlutterHotReload<CR>", opts)
map("n", "<leader>ñfd", ":FlutterVSplit<CR>", opts)
