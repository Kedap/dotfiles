vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = false }

-- Como el tmux
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- De cajon
map("n", "<leader>w", "<cmd>w<CR>", opts)
map("n", "<leader>s", "<cmd>x!<CR>", opts)
map("n", "<leader>q", "<cmd>q!<CR>", opts)
map("n", "<leader>r", "o<Esc>", opts)
map("n", "<leader>R", "i<CR><Esc>", opts)

-- Plugin manager
map("n", "<leader>pi", "<cmd>PackerInstall<CR>", opts)
map("n", "<leader>pc", "<cmd>PackerClean<CR>", opts)
map("n", "<leader>pu", "<cmd>PackerSync<CR>", opts)

--Terminal
map("n", "<leader>tf", "<cmd>FloatermNew<CR>", opts)
map("n", "<leader>tt", "<cmd>ToggleTerm<CR>", opts)

-- Presentacion
map("n", "<F11>", "<cmd>PresentingStart<CR>", opts)

-- Find
map("n", "<leader>f", "<cmd>Telescope find_files<CR>", opts)
map("n", "<leader>a", "<cmd>Telescope live_grep<CR>", opts)
map("n", "<leader>n", "<cmd>NvimTreeToggle<CR>", opts)
map("n", "<leader>l", "<cmd>HopChar2<CR>", opts)
map("n", "\\", ":noh<CR>", opts)

-- Colorines
map("n", "<leader>oh", ":VCoolor<CR>", opts)
map("n", "<leader>or", ":VCoolIns r<CR>", opts)
map("n", "<leader>oa", ":VCoolIns ra<CR>", opts)

-- LSP mapeos
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
map("n", "gp", "<cmd>Lspsaga preview_definition<CR>", opts)
map("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", opts)
map("n", "gr", "<cmd>Lspsaga rename<CR>", opts)
map("n", "ga", "<cmd>Lspsaga code_action<CR>", opts)
map("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
map("n", "gn", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
map("n", "gp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
map("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
map("n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>", {})
map("n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<cr>", {})

-- Codigo
-- Flutter
map("n", "<leader>ñfr", ":FlutterRun<CR>", opts)
map("n", "<leader>ñfh", ":FlutterHotReload<CR>", opts)
map("n", "<leader>ñfd", ":FlutterVSplit<CR>", opts)
-- LaTeX
map("n", "<leader>ñlc", ":VimtexCompile<CR>", opts)
-- Markdown
map("n", "<leader>ñmp", ":MarkdownPreview<CR>", opts)
map("n", "<leader>ñms", ":MarkdownPreviewStop<CR>", opts)
-- Rust (cargo.toml)
map("n", "<leader>ñrl", "<cmd>lua require('crates').show_popup()<CR>", opts)
map("n", "<leader>ñrf", "<cmd>lua require('crates').show_features_popup()<CR>", opts)
-- Asynctaks
map("n", "<F12>", "<cmd>AsyncTask file-build<CR>", opts)
map("n", "<F9>", "<cmd>AsyncTask file-run<CR>", opts)
map("n", "ñte", ":AsyncTaskEdit<CR>", opts)
map("n", "ñtr", ":AsyncTask", opts)
map("n", "ñtl", ":AsyncTaskLast", opts)
-- Vimspector
map("n", "ñdb", "<cmd>VimspectorBreakpoints<CR>", opts)
map("n", "ñdl", "<cmd>call vimspector#ClearBreakpoints()<CR>", opts)
map("n", "<F29>", "<cmd>call vimspector#Launch()<CR>", opts)
map("n", "<F5>", ":call vimspector#StepOut()<CR>", opts)
map("n", "<leader><F5>", ":call vimspector#Reset()<CR>", opts)
map("n", "<F6>", ":call vimspector#StepOver()<CR>", opts)
map("n", "<leader><F6>", ":call vimspector#StepInto()<CR>", opts)
map("n", "<F7>", ":call vimspector#Continue()<CR>", opts)
map("n", "<leader><F7>", ":call vimspector#Restart()<CR>", opts)
map("n", "<F8>", ":call vimspector#Pause()<CR>", opts)
map("n", "<leader><F8>", ":call vimspector#Stop()<CR>", opts)
map("n", "<F32>", "<cmd>call vimspector#ToggleBreakpoint()<CR>", opts)
