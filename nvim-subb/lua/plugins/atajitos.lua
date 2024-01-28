return {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup {}
    vim.g.mapleader = " "
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = false }
    local wk_opts = { prefix = "<leader>" }
    local wk = require "which-key"

    -- Atajos naturales
    -- Como el tmux
    map("n", "<C-h>", "<C-w>h", opts)
    map("n", "<C-j>", "<C-w>j", opts)
    map("n", "<C-k>", "<C-w>k", opts)
    map("n", "<C-l>", "<C-w>l", opts)
    map("n", "<C-w><left>", "5<C-w><", opts)
    map("n", "<C-w><right>", "5<C-w>>", opts)
    map("n", "<C-w><up>", "5<C-w>+", opts)
    map("n", "<C-w><down>", "5<C-w>-", opts)
    -- Para el indent
    map("v", "<", "<gv", opts)
    map("v", ">", ">gv", opts)

    local mappings = {
      -- De cajon
      s = { ":x! <cr>", "Escribir y salir" },
      q = { ":q! <cr>", "Salir" },
      r = { "o<Esc>", "Agregar linea nueva" },
      R = { "i<CR><Esc>", "Agregar linea nueva donde estes" },
    }

    wk.register({
      -- De cajon
      f = {
        name = "Archivo",
        o = { ":w! <cr>", "Guardar" },
        s = { ":x! <cr>", "Guardar y salir" },
        n = { ":NvimTreeToggle<CR>", "Abrir gestor de archivos" },
        f = { "<cmd>Telescope find_files<CR>", "Encontrar archivos" },
      },
      p = {
        name = "Gestor de plugins",
        i = { "<cmd>Lazy install<CR>", "Instalar nuevos plugins" },
        c = { "<cmd>Lazy clean<CR>", "Limpiar cache" },
        u = { "<cmd>Lazy update<CR>", "Actualizar plugins" },
      },
      b = {
        name = "Buffer",
        n = { "<cmd>BufferLineCycleNext<CR>", "Ir al siguiente buffer" },
        p = { "<cmd>BufferLineCyclePrev<CR>", "Ir al anterior buffer" },
        c = { "<cmd>bd<CR>", "Borrar buffer actual" },
        v = { "<cmd>enew<CR>", "Abrir un buffer nuevo y vacio" },
      },
      l = {
        name = "Encontrar",
        a = { "<cmd>Telescope live_grep<CR>", "Encontrar palabras" },
        l = { "<cmd>HopChar2<CR>", "Encontrar palabras en tu vista" },
        t = { "<cmd>TodoTelescope<CR>", "Encontrar los comentarios" },
      },
      t = {
        name = "Terminal",
        f = { "<cmd>FloatermNew<CR>", "Terminal flotantte" },
        t = { "<cmd>ToggleTerm<CR>", "Una terminal simple" },
        s = { "<cmd>split<CR><cmd>term<CR>", "Una terminal AUN MAS SIMPLE" },
        g = { "<cmd>tabnew<CR><cmd>term<CR>", "Una terminal simple en una tab nueva" },
      },
      w = {
        name = "Tabs",
        n = { "<cmd>tabn<CR>", "Siguiente tab" },
        p = { "<cmd>tabp<CR>", "Anterior tab" },
        l = { "<cmd>tabs<CR>", "Lista de tabs" },
        C = { "<cmd>bd<CR>", "Borrar buffer actual" },
        c = { "<cmd>tabclose<CR>", "Quitar tab" },
        N = { "<cmd>tabnew<CR>", "Nuevo tab" },
        s = { "<cmd>split<CR>", "Split de arriba y abajo" },
        v = { "<cmd>vsplit<CR>", "Split de derecha a izquierda" },
      },
    }, wk_opts)

    map("n", "\\", ":noh<CR>", opts)

    -- Registrando los atajos
    wk.register(mappings, wk_opts)
  end,
}
