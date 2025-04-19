return {
  "folke/which-key.nvim",
  dependencies = { "echasnovski/mini.icons" },
  config = function()
    require("mini.icons").setup()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup({})
    vim.g.mapleader = " "
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = false }
    local wk = require("which-key")

    -- Atajos naturales
    -- Como el tmux
    -- map("n", "<C-h>", "<C-w>h", opts)
    -- map("n", "<C-j>", "<C-w>j", opts)
    -- map("n", "<C-k>", "<C-w>k", opts)
    -- map("n", "<C-l>", "<C-w>l", opts)
    -- map("n", "<C-w><left>", "5<C-w>>", opts)
    -- map("n", "<C-w><right>", "5<C-w><", opts)
    -- map("n", "<C-w><up>", "5<C-w>+", opts)
    -- map("n", "<C-w><down>", "5<C-w>-", opts)

    -- Tmux
    map("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>", opts)
    map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>", opts)
    map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>", opts)
    map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>", opts)

    -- Para el indent
    map("v", "<", "<gv", opts)
    map("v", ">", ">gv", opts)

    wk.add({
      -- De cajon
      { "<leader>s", ":x! <cr>", desc = "Escribir y salir", icon = { icon = "󰈆 ", color = "purple" } },
      { "<leader>q", ":q! <cr>", desc = "Salir", icon = { icon = "󰈆 ", color = "red" } },
      { "<leader>r", "o<Esc>", desc = "Agregar linea nueva", icon = { icon = " ", color = "green" } },
      { "<leader>R", "i<CR><Esc>", desc = "Agregar linea nueva donde estes", icon = { icon = " ", color = "red" } },
    })

    wk.add({
      { "<leader>b", group = "Buffer" },
      { "<leader>bc", "<cmd>bd<CR>", desc = "Borrar buffer actual" },
      { "<leader>bn", "<cmd>BufferLineCycleNext<CR>", desc = "Ir al siguiente buffer" },
      { "<leader>bp", "<cmd>BufferLineCyclePrev<CR>", desc = "Ir al anterior buffer" },
      { "<leader>bv", "<cmd>enew<CR>", desc = "Abrir un buffer nuevo y vacio" },

      { "<leader>c", group = "Codigo", icon = { icon = "󱖫 ", color = "green" } },
      { "<leader>cD", "<cmd>Lspsaga show_line_diagnostics<CR>", desc = "Ver diagnostico" },
      { "<leader>ca", "<cmd>Lspsaga code_action<CR>", desc = "Accion del codigo" },
      { "<leader>cd", "<cmd>Lspsaga peek_definition<CR>", desc = "Ver la definición" },
      { "<leader>cf", "<cmd>Lspsaga lsp_finder<CR>", desc = "Ver referencias" },
      { "<leader>ck", "<cmd>lua require('lsp_signature').toggle_float_win()<CR>", desc = "Signature brow" },
      { "<leader>cl", "<cmd>Trouble diagnostics toggle focus<CR>", desc = "Ver logs de LSP" },
      { "<leader>cm", "<cmd>Lspsaga outline<CR>", desc = "Mapa sobre la referencia" },
      { "<leader>cr", "<cmd>Lspsaga rename<CR>", desc = "Renombrar..." },
      { "<leader>ct", "<cmd>TodoTrouble<CR>", desc = "Ver todos los comentarios" },

      { "<leader>d", group = "Depurar", icon = { icon = "󰃤 ", color = "red" } },
      { "<leader>dC", "<cmd>DapTerminate<CR>", desc = "Quitar el depurador" },
      { "<leader>dP", "<cmd>lua require'dap'.step_over()<CR>", desc = "Step over" },
      { "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", desc = "Poner/quitar breakpoint" },
      { "<leader>dc", "<cmd>lua require'dap'.continue()<CR>", desc = "Continuar con la depuración" },
      {
        "<leader>de",
        "<cmd>lua require'telescope'.extensions.dap.list_breakpoints{}<CR>",
        desc = "Ver los breakpoints",
      },
      {
        "<leader>dk",
        "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
        desc = "Poner un breakpoint condicional",
      },
      { "<leader>dl", "<cmd>lua require'dap'.clear_breakpoints()<CR>", desc = "Limpiar los breakpoint" },
      { "<leader>dp", "<cmd>lua require'dap'.step_into()<CR>", desc = "Step into" },

      { "<leader>f", group = "Archivos", icon = { icon = "󰈔", color = "cyan" } },
      { "<leader>fc", "<cmd>UndotreeToggle<CR>", desc = "Ver arbol de cambios" },
      { "<leader>fd", "<cmd>e ~/.config/nvim<CR>", desc = "Editar dotfiles de NeoGOD" },
      { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Encontrar archivos" },
      { "<leader>fk", "<cmd>Silicon<CR>", desc = "Tomar captura con silicon" },
      { "<leader>fl", "<cmd>Oil<CR>", desc = "Oil time!" },
      { "<leader>fn", ":NvimTreeToggle<CR>", desc = "Abrir gestor de archivos" },
      { "<leader>fo", ":w! <cr>", desc = "Guardar" },
      { "<leader>fs", ":x! <cr>", desc = "Guardar y salir" },
      { "<leader>fh", "<cmd> lua Snacks.scratch()<cr>", desc = "Abrir un archivo de scratch" },
      { "<leader>fH", "<cmd> lua Snacks.scratch.select()()<cr>", desc = "Seleccionar un archivo de scratch" },

      { "<leader>g", group = "Git" },
      { "<leader>gA", "<cmd>Git add --all<CR>", desc = "Agregar TODOS los cambios al stage" },
      { "<leader>gB", "<cmd>Telescope git_branches<CR>", desc = "Rama..." },
      { "<leader>gD", "<cmd>DiffviewFileHistory %<CR>", desc = "Ver TODOS los cambios de ESTE archivo" },
      { "<leader>gP", "<cmd>lua require'neogit'.open({'pull'})<CR>", desc = "PULL" },
      { "<leader>gR", "<cmd>Git restore .<CR>", desc = "Restaurar TODOS los ARCHIVOS" },
      { "<leader>ga", "<cmd>Git add %<CR>", desc = "Agregar este archivo a stage" },
      { "<leader>gb", "<cmd>Git blame<CR>", desc = "Git blame Bv" },
      { "<leader>gc", "<cmd>Neogit commit<CR>", desc = "Realizar commit" },
      { "<leader>gd", "<cmd>DiffviewOpen<CR>", desc = "Ver los ultimos cambios" },
      { "<leader>gg", "<cmd>Neogit<CR>", desc = "Abrir NeoGit" },
      { "<leader>gh", group = "Hunk" },
      { "<leader>ghr", "<cmd>Gitsigns reset_hunk<CR>", desc = "Restaurar hunk del commit" },
      { "<leader>ghs", "<cmd>Gitsigns stage_hunk<CR>", desc = "Agrear hunk" },
      { "<leader>ghu", "<cmd>Gitsigns undo_stage_hunk<CR>", desc = "Quitar hunk del stage" },
      { "<leader>gk", group = "Conflict" },
      { "<leader>gkN", "<cmd>GitConflictChooseNone<CR>", desc = "Elige NIGÚN cambio" },
      { "<leader>gka", "<cmd>GitConflictChooseBoth<CR>", desc = "Elige ambos" },
      { "<leader>gkl", "<cmd>GitConflictListQf<CR>", desc = "Logs de los conflictos" },
      { "<leader>gkn", "<cmd>GitConflictNextConflict<CR>", desc = "Ir al siguiente cambio" },
      { "<leader>gko", "<cmd>GitConflictChooseOurs<CR>", desc = "Elige el cambio actual" },
      { "<leader>gkp", "<cmd>GitConflictPrevConflict<CR>", desc = "Ir al anterior cambio" },
      { "<leader>gkt", "<cmd>GitConflictChooseTheirs<CR>", desc = "Elige el actual entrante" },
      { "<leader>gl", "<cmd>Git log<CR>", desc = "Ver commits" },
      { "<leader>gp", "<cmd>lua require'neogit'.open({'push'})<CR>", desc = "PUSH" },
      { "<leader>gq", "<cmd>Git restore --staged %<CR>", desc = "Quitar este archivo del stage" },
      { "<leader>gr", "<cmd>Git restore %<CR>", desc = "Restaurar el archivo" },
      { "<leader>gs", group = "Stash" },
      { "<leader>gsl", "<cmd>Telescope git_stash<CR>", desc = "Ver los Stash" },
      { "<leader>gsa", "<cmd>Git stash<CR>", desc = "Agrega un stash" },
      { "<leader>gsA", "<cmd>Git stash apply<CR>", desc = "Aplica el stash" },
      { "<leader>gsd", "<cmd>Git stash drop<CR>", desc = "Elimina el stash" },
      { "<leader>gsp", "<cmd>Git stash pop<CR>", desc = "Aplica y elimina el stash" },

      { "<leader>k", group = "Colores", icon = { icon = " ", color = "yellow" } },
      { "<leader>ka", ":Shades<CR>", desc = "Seleccionar color" },
      { "<leader>kh", ":Huefy<CR>", desc = "Seleccionar color hue" },

      { "<leader>l", group = "Encontrar", icon = { icon = " ", color = "green" } },
      { "<leader>la", "<cmd>Telescope live_grep<CR>", desc = "Encontrar palabras" },
      { "<leader>ll", "<cmd>HopChar2<CR>", desc = "Encontrar palabras en tu vista" },
      { "<leader>lt", "<cmd>TodoTelescope<CR>", desc = "Encontrar los comentarios" },

      { "<leader>m", group = "Acciones de lenguajes", icon = { icon = " ", color = "orange" } },
      { "<leader>mf", group = "Flutter" },
      { "<leader>mfh", "<cmd>FlutterHotReload<CR>", desc = "Ejecutar el hot reload" },
      { "<leader>mfr", "<cmd>FlutterRun<CR>", desc = "Correr la aplicación" },
      { "<leader>mfs", "<cmd>FlutterVSplit<CR>", desc = "Split?" },
      { "<leader>mg", group = "Go" },
      { "<leader>mgc", "<cmd>GoCmt<CR>", desc = "Comentar!" },
      { "<leader>mge", "<cmd>GoIfErr<CR>", desc = "If err != Zzz" },
      { "<leader>mgi", "<cmd>GoImpl", desc = "Implementar.interfaz(struct)" },
      { "<leader>mgt", "<cmd>GoModTidy<CR>", desc = "Limpia las librerias" },
      { "<leader>ml", group = "LaTeX" },
      { "<leader>mlc", ":VimtexCompile<CR>", desc = "Compilar y ver el documento LaTeX" },
      {
        "<leader>mlp",
        "<cmd>lua require('nabla').popup({border = rounded})<CR>",
        desc = "Vista previa de la expresion",
      },
      { "<leader>mm", group = "Markdown" },
      { "<leader>mmp", ":MarkdownPreview<CR>", desc = "Ver vista previa del documento" },
      { "<leader>mms", ":MarkdownPreviewStop<CR>", desc = "Parar la vista previa" },
      { "<leader>mmP", ":MarpToggle<CR>", desc = "Presentar con Marp" },
      { "<leader>mmS", ":MarpStatus<CR>", desc = "Estado sobre Marp" },
      { "<leader>mn", group = "Neorg" },
      { "<leader>mnE", ":Neorg export to-file<CR>", desc = "Exportar a Markdown" },
      { "<leader>mna", ":e ~/org/norg/agenda.norg<CR>", desc = "Abrir agenda" },
      { "<leader>mne", ":Neorg keybind all core.gtd.base.edit<CR>", desc = "Editar tareas" },
      { "<leader>mni", ":Neorg inject-metadata<CR>", desc = "Poner metadatos" },
      { "<leader>mnr", ":Neorg keybind all core.gtd.base.capture<CR>", desc = "Registrar tarea" },
      { "<leader>mnv", ":Neorg keybind all core.gtd.base.views<CR>", desc = "Ver tareas" },
      { "<leader>mr", group = "Rust" },
      { "<leader>mrf", "<cmd>lua require('crates').show_features_popup()<CR>", desc = "Ver los features" },
      { "<leader>mrl", "<cmd>lua require('crates').show_popup()<CR>", desc = "Ver mejor los crates" },

      { "<leader>p", group = "Lazy" },
      { "<leader>pc", "<cmd>Lazy clean<CR>", desc = "Limpiar cache" },
      { "<leader>pi", "<cmd>Lazy install<CR>", desc = "Instalar nuevos plugins" },
      { "<leader>pu", "<cmd>Lazy update<CR>", desc = "Actualizar plugins" },

      { "<leader>t", group = "Terminal" },
      { "<leader>tb", "<cmd>tab DBUI<CR>", desc = "Conectarte con la base de datos..." },
      { "<leader>tf", "<cmd>FloatermNew<CR>", desc = "Terminal flotantte" },
      { "<leader>tg", "<cmd>tabnew<CR><cmd>term<CR>", desc = "Una terminal simple en una tab nueva" },
      { "<leader>ts", "<cmd>split<CR><cmd>term<CR>", desc = "Una terminal AUN MAS SIMPLE" },
      { "<leader>tt", "<cmd>ToggleTerm<CR>", desc = "Una terminal simple" },

      { "<leader>w", group = "Tabs" },
      { "<leader>wC", "<cmd>bd<CR>", desc = "Borrar buffer actual" },
      { "<leader>wN", "<cmd>tabnew<CR>", desc = "Nuevo tab" },
      { "<leader>wc", "<cmd>tabclose<CR>", desc = "Quitar tab" },
      { "<leader>wl", "<cmd>tabs<CR>", desc = "Lista de tabs" },
      { "<leader>wn", "<cmd>tabn<CR>", desc = "Siguiente tab" },
      { "<leader>wp", "<cmd>tabp<CR>", desc = "Anterior tab" },
      { "<leader>ws", "<cmd>split<CR>", desc = "Split de arriba y abajo" },
      { "<leader>wv", "<cmd>vsplit<CR>", desc = "Split de derecha a izquierda" },

      { "<leader>h", group = "Http (API rest)" },
      { "<leader>hr", "<cmd>Rest run<CR>", desc = "Hacer petición del documento" },
      { "<leader>hR", "<cmd>Rest last<CR>", desc = "Volver a ejecutar la petición" },
      -- { "<leader>hc", "<cmd>lua require('kulala').close()<CR>", desc = "Quitar la petición" },
      { "<leader>ho", "<cmd>Rest open<CR>", desc = "Abrir el panel de resultados" },
    })

    map("n", "\\", ":noh<CR>", opts)

    -- LSP mapeos
    map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
    map("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
    map("n", "gn", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
    map("n", "gp", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
    map("n", "<F5>", "<cmd>lua require'dap'.continue()<CR>", opts)
  end,
}
