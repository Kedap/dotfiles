return {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup({})
    vim.g.mapleader = " "
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = false }
    local wk_opts = { prefix = "<leader>" }
    local wk = require("which-key")

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
        d = { "<cmd>e ~/.config/nvim<CR>", "Editar dotfiles de NeoGOD" },
        c = { "<cmd>UndotreeToggle<CR>", "Ver arbol de cambios" },
        k = { "<cmd>Silicon<CR>", "Tomar captura con silicon" },
        l = { "<cmd>Oil<CR>", "Oil time!" },
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
      c = {
        name = "Codigo",
        d = { "<cmd>Lspsaga peek_definition<CR>", "Ver la definición" },
        m = { "<cmd>Lspsaga outline<CR>", "Mapa sobre la referencia" },
        f = { "<cmd>Lspsaga lsp_finder<CR>", "Ver referencias" },
        r = { "<cmd>Lspsaga rename<CR>", "Renombrar..." },
        a = { "<cmd>Lspsaga code_action<CR>", "Accion del codigo" },
        D = { "<cmd>Lspsaga show_line_diagnostics<CR>", "Ver diagnostico" },
        l = { "<cmd>TroubleToggle<CR>", "Ver logs de LSP" },
        t = { "<cmd>TodoTrouble<CR>", "Ver todos los comentarios" },
        R = { "<cmd>TroubleRefresh<CR>", "Refrescar los logs de LSP" },
        k = { "<cmd>lua require('lsp_signature').toggle_float_win()<CR>", "Signature brow" },
      },
      m = {
        name = "Acciones del lenguaje",
        r = {
          name = "Rust",
          l = { "<cmd>lua require('crates').show_popup()<CR>", "Ver mejor los crates" },
          f = { "<cmd>lua require('crates').show_features_popup()<CR>", "Ver los features" },
        },
        m = {
          name = "Markdown",
          p = { ":MarkdownPreview<CR>", "Ver vista previa del documento" },
          s = { ":MarkdownPreviewStop<CR>", "Parar la vista previa" },
        },
        l = {
          name = "LaTeX",
          c = { ":VimtexCompile<CR>", "Compilar y ver el documento LaTeX" },
          p = { "<cmd>lua require('nabla').popup({border = rounded})<CR>", "Vista previa de la expresion" },
        },
        n = {
          name = "Neorg",
          i = { ":Neorg inject-metadata<CR>", "Poner metadatos" },
          r = { ":Neorg keybind all core.gtd.base.capture<CR>", "Registrar tarea" },
          e = { ":Neorg keybind all core.gtd.base.edit<CR>", "Editar tareas" },
          E = { ":Neorg export to-file<CR>", "Exportar a Markdown" },
          v = { ":Neorg keybind all core.gtd.base.views<CR>", "Ver tareas" },
          a = { ":e ~/org/norg/agenda.norg<CR>", "Abrir agenda" },
        },
        f = {
          name = "Flutter",
          r = { "<cmd>FlutterRun<CR>", "Correr la aplicación" },
          h = { "<cmd>FlutterHotReload<CR>", "Ejecutar el hot reload" },
          s = { "<cmd>FlutterVSplit<CR>", "Split?" },
        },
        g = {
          name = "Go",
          c = { "<cmd>GoCmt<CR>", "Comentar!" },
          t = { "<cmd>GoModTidy<CR>", "Limpia las librerias" },
          e = { "<cmd>GoIfErr<CR>", "If err != Zzz" },
          i = { "<cmd>GoImpl", "Implementar.interfaz(struct)" },
        },
      },
      l = {
        name = "Encontrar",
        a = { "<cmd>Telescope live_grep<CR>", "Encontrar palabras" },
        l = { "<cmd>HopChar2<CR>", "Encontrar palabras en tu vista" },
        t = { "<cmd>TodoTelescope<CR>", "Encontrar los comentarios" },
      },
      k = {
        name = "Colorines",
        o = { ":VCoolor<CR>", "Seleccionar color" },
        r = { ":VCoolIns r<CR>", "Seleccionar color RGB" },
        a = { ":VCoolIns ra<CR>", "Seleccionar color RGBA" },
      },
      t = {
        name = "Terminal",
        f = { "<cmd>FloatermNew<CR>", "Terminal flotantte" },
        t = { "<cmd>ToggleTerm<CR>", "Una terminal simple" },
        s = { "<cmd>split<CR><cmd>term<CR>", "Una terminal AUN MAS SIMPLE" },
        g = { "<cmd>tabnew<CR><cmd>term<CR>", "Una terminal simple en una tab nueva" },
        b = { "<cmd>tab DBUI<CR>", "Conectarte con la base de datos..." },
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
      d = {
        name = "Depuración moment",
        b = { "<cmd>lua require'dap'.toggle_breakpoint()<CR>", "Poner/quitar breakpoint" },
        k = {
          "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
          "Poner un breakpoint condicional",
        },
        l = { "<cmd>lua require'dap'.clear_breakpoints()<CR>", "Limpiar los breakpoint" },
        c = { "<cmd>lua require'dap'.continue()<CR>", "Continuar con la depuración" },
        C = { "<cmd>DapTerminate<CR>", "Quitar el depurador" },
        p = { "<cmd>lua require'dap'.step_into()<CR>", "Step into" },
        P = { "<cmd>lua require'dap'.step_over()<CR>", "Step over" },
        e = { "<cmd>lua require'telescope'.extensions.dap.list_breakpoints{}<CR>", "Ver los breakpoints" },
      },
      g = {
        name = "Git",
        d = { "<cmd>DiffviewOpen<CR>", "Ver los ultimos cambios" },
        D = { "<cmd>DiffviewFileHistory %<CR>", "Ver TODOS los cambios de ESTE archivo" },
        -- g = { "<cmd>LazyGit<CR>", "Abrir lazygit" },
        g = { "<cmd>Git<CR>", "Abrir Git" },
        a = { "<cmd>Git add %<CR>", "Agregar este archivo a stage" },
        A = { "<cmd>Git add --all<CR>", "Agregar TODOS los cambios al stage" },
        -- c = { "<cmd>Neogit commit<CR>", "Realizar commit" },
        c = { "<cmd>Git commit<CR>", "Realizar commit" },
        -- p = { "<cmd>lua require'neogit'.open({'push'})<CR>", "PUSH" },
        p = { "<cmd>Git --paginate push<CR>", "PUSH" },
        -- P = { "<cmd>lua require'neogit'.open({'pull'})<CR>", "PULL" },
        -- b = { "<cmd>lua require'neogit'.open({'branch'})<CR>", "Rama..." },
        b = { "<cmd>Git blame<CR>", "Git blame Bv" },
        B = { "<cmd>Telescope git_branches<CR>", "Rama..." },
        s = { "<cmd>Telescope git_stash<CR>", "Stashs de git" },
        l = { "<cmd>Git log<CR>", "Ver commits" },
        r = { "<cmd>Git restore %<CR>", "Restaurar el archivo" },
        R = { "<cmd>Git restore .<CR>", "Restaurar TODOS los ARCHIVOS" },
        q = { "<cmd>Git restore --staged %<CR>", "Quitar este archivo del stage" },
        h = {
          name = "Hunk",
          s = { "<cmd>Gitsigns stage_hunk<CR>", "Agrear hunk" },
          r = { "<cmd>Gitsigns reset_hunk<CR>", "Restaurar hunk del commit" },
          u = { "<cmd>Gitsigns undo_stage_hunk<CR>", "Quitar hunk del stage" },
        },
      },
      h = {
        name = "Http (API rest)",
        r = { "<Plug>RestNvim", "Correr la peticion bajo el cursor" },
        p = { "<Plug>RestNvimPreview", "Ver la peticion con cURL" },
        l = { "<Plug>RestNvimLast", "Volver a correr la ultima peticion" },
      },
    }, wk_opts)

    map("n", "\\", ":noh<CR>", opts)

    -- LSP mapeos
    map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
    map("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
    map("n", "gn", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
    map("n", "gp", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
    map("n", "<F5>", "<cmd>lua require'dap'.continue()<CR>", opts)

    -- Registrando los atajos
    wk.register(mappings, wk_opts)
  end,
}
