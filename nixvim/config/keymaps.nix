{...}: {
  opts = {
    timeout = true;
    timeoutlen = 300;
  };

  plugins = {
    which-key = {
      enable = true;
      settings = {
        icons = {
          breadcrumb = "»";
          color = true;
          ellipsis = "…";
          group = "";
          mappings = true;
          separator = "󰅂";
          keys = {
            BS = "󰁮";
            C = "󰘴 ";
            CR = "󰌑 ";
            D = "󰘳 ";
            Down = " ";
            Esc = "󱊷 ";
            F1 = "󱊫";
            F10 = "󱊴";
            F11 = "󱊵";
            F12 = "󱊶";
            F2 = "󱊬";
            F3 = "󱊭";
            F4 = "󱊮";
            F5 = "󱊯";
            F6 = "󱊰";
            F7 = "󱊱";
            F8 = "󱊲";
            F9 = "󱊳";
            Left = " ";
            M = "󰘵 ";
            NL = "󰌑 ";
            Right = " ";
            S = "󰘶 ";
            ScrollWheelDown = "󱕐 ";
            ScrollWheelUp = "󱕑 ";
            Space = "󱁐 ";
            Tab = "󰌒 ";
            Up = " ";
          };
        };
        spelling = {
          enabled = true;
          suggestions = 20;
        };
      };
    };
    mini.enable = true;
    web-devicons.enable = true;
    tmux-navigator.enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<C-h>";
      action = "<cmd>TmuxNavigateLeft<cr>";
    }
    {
      mode = "n";
      key = "<C-j>";
      action = "<cmd>TmuxNavigateDown<cr>";
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<cmd>TmuxNavigateUp<cr>";
    }
    {
      mode = "n";
      key = "<C-l>";
      action = "<cmd>TmuxNavigateRight<cr>";
    }
    {
      mode = "v";
      key = "<";
      action = "<gv";
    }
    {
      mode = "v";
      key = ">";
      action = ">gv";
    }
    {
      mode = "n";
      key = "\\";
      action = ":noh<cr>";
    }
    {
      mode = "n";
      key = "gd";
      action = "<cmd>lua vim.lsp.buf.definition()<CR>";
    }
    {
      mode = "n";
      key = "K";
      action = "<cmd>Lspsaga hover_doc<cr>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "gn";
      action = "<cmd>Lspsaga diagnostic_jump_next<cr>";
    }
    {
      mode = "n";
      key = "gp";
      action = "<cmd>Lspsaga diagnostic_jump_prev<cr>";
    }
    {
      mode = "n";
      key = "<F5>";
      action = "<cmd>lua require'dap'.continue()<CR>";
    }
    {
      mode = "t";
      key = "<C-x>";
      action = "<C-\\><C-N>";
    }
  ];

  plugins.which-key.settings.spec = [
    # -- Core --
    {
      __unkeyed-1 = "<leader>q";
      __unkeyed-2 = ":q! <cr>";
      desc = "Salir";
      icon = {
        icon = "󰈆 ";
        color = "red";
      };
    }
    {
      __unkeyed-1 = "<leader>r";
      __unkeyed-2 = "o<Esc>";
      desc = "Agregar linea nueva";
      icon = {
        icon = " ";
        color = "green";
      };
    }
    {
      __unkeyed-1 = "<leader>R";
      __unkeyed-2 = "i<CR><Esc>";
      desc = "Agregar linea nueva donde estes";
      icon = {
        icon = " ";
        color = "red";
      };
    }

    # -- Grupo Buffer --
    {
      __unkeyed-1 = "<leader>b";
      group = "Buffer";
    }
    {
      __unkeyed-1 = "<leader>bc";
      __unkeyed-2 = "<cmd>bd<CR>";
      desc = "Borrar buffer actual";
    }
    {
      __unkeyed-1 = "<leader>bn";
      __unkeyed-2 = "<cmd>BufferLineCycleNext<CR>";
      desc = "Ir al siguiente buffer";
    }
    {
      __unkeyed-1 = "<leader>bp";
      __unkeyed-2 = "<cmd>BufferLineCyclePrev<CR>";
      desc = "Ir al anterior buffer";
    }
    {
      __unkeyed-1 = "<leader>bv";
      __unkeyed-2 = "<cmd>enew<CR>";
      desc = "Abrir un buffer nuevo y vacio";
    }

    # -- Grupo Codigo --
    {
      __unkeyed-1 = "<leader>c";
      group = "Codigo";
      icon = {
        icon = "󱀫 ";
        color = "green";
      };
    }
    {
      __unkeyed-1 = "<leader>cD";
      __unkeyed-2 = "<cmd>Lspsaga show_line_diagnostics<CR>";
      desc = "Ver diagnostico";
    }
    {
      __unkeyed-1 = "<leader>ca";
      __unkeyed-2 = "<cmd>Lspsaga code_action<CR>";
      desc = "Accion del codigo";
    }
    {
      __unkeyed-1 = "<leader>cd";
      __unkeyed-2 = "<cmd>Lspsaga peek_definition<CR>";
      desc = "Ver la definición";
    }
    {
      __unkeyed-1 = "<leader>cf";
      __unkeyed-2 = "<cmd>Lspsaga lsp_finder<CR>";
      desc = "Ver referencias";
    }
    {
      __unkeyed-1 = "<leader>ck";
      __unkeyed-2 = "<cmd>lua require('lsp_signature').toggle_float_win()<CR>";
      desc = "Signature brow";
    }
    {
      __unkeyed-1 = "<leader>cl";
      __unkeyed-2 = "<cmd>Trouble diagnostics toggle focus<CR>";
      desc = "Ver logs de LSP";
    }
    {
      __unkeyed-1 = "<leader>cm";
      __unkeyed-2 = "<cmd>Lspsaga outline<CR>";
      desc = "Mapa sobre la referencia";
    }
    {
      __unkeyed-1 = "<leader>cr";
      __unkeyed-2 = "<cmd>Lspsaga rename<CR>";
      desc = "Renombrar...";
    }
    {
      __unkeyed-1 = "<leader>ct";
      __unkeyed-2 = "<cmd>TodoTrouble<CR>";
      desc = "Ver todos los comentarios";
    }

    # -- Grupo Depurar --
    {
      __unkeyed-1 = "<leader>d";
      group = "Depurar";
      icon = {
        icon = "󰃤 ";
        color = "red";
      };
    }
    {
      __unkeyed-1 = "<leader>dC";
      __unkeyed-2 = "<cmd>DapTerminate<CR>";
      desc = "Quitar el depurador";
    }
    {
      __unkeyed-1 = "<leader>dP";
      __unkeyed-2 = "<cmd>lua require'dap'.step_over()<CR>";
      desc = "Step over";
    }
    {
      __unkeyed-1 = "<leader>db";
      __unkeyed-2 = "<cmd>lua require'dap'.toggle_breakpoint()<CR>";
      desc = "Poner/quitar breakpoint";
    }
    {
      __unkeyed-1 = "<leader>dc";
      __unkeyed-2 = "<cmd>lua require'dap'.continue()<CR>";
      desc = "Continuar con la depuración";
    }
    {
      __unkeyed-1 = "<leader>de";
      __unkeyed-2 = "<cmd>lua require'telescope'.extensions.dap.list_breakpoints{}<CR>";
      desc = "Ver los breakpoints";
    }
    {
      __unkeyed-1 = "<leader>dk";
      __unkeyed-2 = "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>";
      desc = "Poner un breakpoint condicional";
    }
    {
      __unkeyed-1 = "<leader>dl";
      __unkeyed-2 = "<cmd>lua require'dap'.clear_breakpoints()<CR>";
      desc = "Limpiar los breakpoint";
    }
    {
      __unkeyed-1 = "<leader>dp";
      __unkeyed-2 = "<cmd>lua require'dap'.step_into()<CR>";
      desc = "Step into";
    }

    # -- Grupo Archivos --
    {
      __unkeyed-1 = "<leader>f";
      group = "Archivos";
      icon = {
        icon = "󰈔";
        color = "cyan";
      };
    }
    {
      __unkeyed-1 = "<leader>fc";
      __unkeyed-2 = "<cmd>UndotreeToggle<CR>";
      desc = "Ver arbol de cambios";
    }
    {
      __unkeyed-1 = "<leader>fd";
      __unkeyed-2 = "<cmd>e ~/.config/nvim<CR>";
      desc = "Editar dotfiles de NeoGOD";
    }
    {
      __unkeyed-1 = "<leader>ff";
      __unkeyed-2 = "<cmd>Telescope find_files<CR>";
      desc = "Encontrar archivos";
    }
    {
      __unkeyed-1 = "<leader>fF";
      __unkeyed-2 = "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>";
      desc = "Encontrar archivos";
    }
    {
      __unkeyed-1 = "<leader>fL";
      __unkeyed-2 = "<cmd>Telescope oldfiles<CR>";
      desc = "Abiertos recientemente";
    }
    {
      __unkeyed-1 = "<leader>fm";
      __unkeyed-2 = "<cmd>Telescope marks<CR>";
      desc = "Buscar en marcas";
    }
    {
      __unkeyed-1 = "<leader>fk";
      __unkeyed-2 = "<cmd>lua require('nvim-silicon').shoot()<CR>";
      desc = "Tomar captura con silicon";
    }
    {
      __unkeyed-1 = "<leader>fl";
      __unkeyed-2 = "<cmd>Oil<CR>";
      desc = "Oil time!";
    }
    {
      __unkeyed-1 = "<leader>fn";
      __unkeyed-2 = ":NvimTreeToggle<CR>";
      desc = "Abrir gestor de archivos";
    }
    {
      __unkeyed-1 = "<leader>fo";
      __unkeyed-2 = ":w! <cr>";
      desc = "Guardar";
    }
    {
      __unkeyed-1 = "<leader>fs";
      __unkeyed-2 = ":x! <cr>";
      desc = "Guardar y salir";
    }
    {
      __unkeyed-1 = "<leader>fh";
      __unkeyed-2 = "<cmd> lua Snacks.scratch()<cr>";
      desc = "Abrir un archivo de scratch";
    }
    {
      __unkeyed-1 = "<leader>fH";
      __unkeyed-2 = "<cmd> lua Snacks.scratch.select()()<cr>";
      desc = "Seleccionar un archivo de scratch";
    }
    {
      __unkeyed-1 = "<leader>fy";
      __unkeyed-2 = "<cmd>let @+=expand(\"%:.\")<cr>";
      desc = "Copiar la ruta relativa";
    }
    {
      __unkeyed-1 = "<leader>fY";
      __unkeyed-2 = "<cmd>let @+ = expand('%:p')<cr>";
      desc = "Copiar la ruta absoluta";
    }

    # -- Grupo Git --
    {
      __unkeyed-1 = "<leader>g";
      group = "Git";
    }
    {
      __unkeyed-1 = "<leader>gA";
      __unkeyed-2 = "<cmd>Git add --all<CR>";
      desc = "Agregar TODOS los cambios al stage";
    }
    {
      __unkeyed-1 = "<leader>gB";
      __unkeyed-2 = "<cmd>Telescope git_branches<CR>";
      desc = "Rama...";
    }
    {
      __unkeyed-1 = "<leader>gs";
      __unkeyed-2 = "<cmd>Telescope git_status<CR>";
      desc = "Ir a archivos cambiados";
    }
    {
      __unkeyed-1 = "<leader>gD";
      __unkeyed-2 = "<cmd>DiffviewFileHistory %<CR>";
      desc = "Ver TODOS los cambios de ESTE archivo";
    }
    {
      __unkeyed-1 = "<leader>gP";
      __unkeyed-2 = "<cmd>lua require'neogit'.open({'pull'})<CR>";
      desc = "PULL";
    }
    {
      __unkeyed-1 = "<leader>gR";
      __unkeyed-2 = "<cmd>Git restore .<CR>";
      desc = "Restaurar TODOS los ARCHIVOS";
    }
    {
      __unkeyed-1 = "<leader>ga";
      __unkeyed-2 = "<cmd>Git add %<CR>";
      desc = "Agregar este archivo a stage";
    }
    {
      __unkeyed-1 = "<leader>gb";
      __unkeyed-2 = "<cmd>Git blame<CR>";
      desc = "Git blame Bv";
    }
    {
      __unkeyed-1 = "<leader>gc";
      __unkeyed-2 = "<cmd>Neogit commit<CR>";
      desc = "Realizar commit";
    }
    {
      __unkeyed-1 = "<leader>gC";
      __unkeyed-2 = "<cmd>Telescope git_commits<CR>";
      desc = "Checkout a un commit";
    }
    {
      __unkeyed-1 = "<leader>gd";
      __unkeyed-2 = "<cmd>DiffviewOpen<CR>";
      desc = "Ver los ultimos cambios";
    }
    {
      __unkeyed-1 = "<leader>gg";
      __unkeyed-2 = "<cmd>Neogit<CR>";
      desc = "Abrir NeoGit";
    }
    {
      __unkeyed-1 = "<leader>gl";
      __unkeyed-2 = "<cmd>Git log<CR>";
      desc = "Ver commits";
    }
    {
      __unkeyed-1 = "<leader>gp";
      __unkeyed-2 = "<cmd>lua require'neogit'.open({'push'})<CR>";
      desc = "PUSH";
    }
    {
      __unkeyed-1 = "<leader>gq";
      __unkeyed-2 = "<cmd>Git restore --staged %<CR>";
      desc = "Quitar este archivo del stage";
    }
    {
      __unkeyed-1 = "<leader>gr";
      __unkeyed-2 = "<cmd>Git restore %<CR>";
      desc = "Restaurar el archivo";
    }

    # Sub-grupo Hunk
    {
      __unkeyed-1 = "<leader>gh";
      group = "Hunk";
    }
    {
      __unkeyed-1 = "<leader>ghr";
      __unkeyed-2 = "<cmd>Gitsigns reset_hunk<CR>";
      desc = "Restaurar hunk del commit";
    }
    {
      __unkeyed-1 = "<leader>ghs";
      __unkeyed-2 = "<cmd>Gitsigns stage_hunk<CR>";
      desc = "Agrear hunk";
    }
    {
      __unkeyed-1 = "<leader>ghu";
      __unkeyed-2 = "<cmd>Gitsigns undo_stage_hunk<CR>";
      desc = "Quitar hunk del stage";
    }

    # Sub-grupo Conflict
    {
      __unkeyed-1 = "<leader>gk";
      group = "Conflict";
    }
    {
      __unkeyed-1 = "<leader>gkN";
      __unkeyed-2 = "<cmd>GitConflictChooseNone<CR>";
      desc = "Elige NIGÚN cambio";
    }
    {
      __unkeyed-1 = "<leader>gka";
      __unkeyed-2 = "<cmd>GitConflictChooseBoth<CR>";
      desc = "Elige ambos";
    }
    {
      __unkeyed-1 = "<leader>gkl";
      __unkeyed-2 = "<cmd>GitConflictListQf<CR>";
      desc = "Logs de los conflictos";
    }
    {
      __unkeyed-1 = "<leader>gkn";
      __unkeyed-2 = "<cmd>GitConflictNextConflict<CR>";
      desc = "Ir al siguiente cambio";
    }
    {
      __unkeyed-1 = "<leader>gko";
      __unkeyed-2 = "<cmd>GitConflictChooseOurs<CR>";
      desc = "Elige el cambio actual";
    }
    {
      __unkeyed-1 = "<leader>gkO";
      __unkeyed-2 = "<cmd>Git checkout --ours %<CR>";
      desc = "Eligir todos los cambios actuales para este arhcivo";
    }
    {
      __unkeyed-1 = "<leader>gkp";
      __unkeyed-2 = "<cmd>GitConflictPrevConflict<CR>";
      desc = "Ir al anterior cambio";
    }
    {
      __unkeyed-1 = "<leader>gkt";
      __unkeyed-2 = "<cmd>GitConflictChooseTheirs<CR>";
      desc = "Elige el actual entrante";
    }
    {
      __unkeyed-1 = "<leader>gkT";
      __unkeyed-2 = "<cmd>Git checkout --theirs %<CR>";
      desc = "Elegir todos los cambios actuales entrantes";
    }

    # Sub-grupo Stash
    {
      __unkeyed-1 = "<leader>gS";
      group = "Stash";
    }
    {
      __unkeyed-1 = "<leader>gSl";
      __unkeyed-2 = "<cmd>Telescope git_stash<CR>";
      desc = "Ver los Stash";
    }
    {
      __unkeyed-1 = "<leader>gSa";
      __unkeyed-2 = "<cmd>Git stash<CR>";
      desc = "Agrega un stash";
    }
    {
      __unkeyed-1 = "<leader>gSA";
      __unkeyed-2 = "<cmd>Git stash apply<CR>";
      desc = "Aplica el stash";
    }
    {
      __unkeyed-1 = "<leader>gSd";
      __unkeyed-2 = "<cmd>Git stash drop<CR>";
      desc = "Elimina el stash";
    }
    {
      __unkeyed-1 = "<leader>gSp";
      __unkeyed-2 = "<cmd>Git stash pop<CR>";
      desc = "Aplica y elimina el stash";
    }

    # -- Grupo Colores --
    {
      __unkeyed-1 = "<leader>k";
      group = "Colores";
      icon = {
        icon = " ";
        color = "yellow";
      };
    }
    {
      __unkeyed-1 = "<leader>ka";
      __unkeyed-2 = ":Shades<CR>";
      desc = "Seleccionar color";
    }
    {
      __unkeyed-1 = "<leader>kh";
      __unkeyed-2 = ":Huefy<CR>";
      desc = "Seleccionar color hue";
    }

    # -- Grupo Encontrar --
    {
      __unkeyed-1 = "<leader>l";
      group = "Encontrar";
      icon = {
        icon = " ";
        color = "green";
      };
    }
    {
      __unkeyed-1 = "<leader>la";
      __unkeyed-2 = "<cmd>Telescope live_grep<CR>";
      desc = "Encontrar palabras";
    }
    {
      __unkeyed-1 = "<leader>lw";
      __unkeyed-2 = "<cmd>Telescope grep_string<CR>";
      desc = "Encontrar palabra sobre el cursor";
    }
    {
      __unkeyed-1 = "<leader>ll";
      __unkeyed-2 = "<cmd>HopChar2<CR>";
      desc = "Encontrar palabras en tu vista";
    }
    {
      __unkeyed-1 = "<leader>lt";
      __unkeyed-2 = "<cmd>TodoTelescope<CR>";
      desc = "Encontrar los comentarios";
    }
    {
      __unkeyed-1 = "<leader>lb";
      __unkeyed-2 = "<cmd>Telescope buffers<CR>";
      desc = "Encontrar en los buffers";
    }

    # -- Grupo Acciones de lenguajes --
    {
      __unkeyed-1 = "<leader>m";
      group = "Acciones de lenguajes";
      icon = {
        icon = " ";
        color = "orange";
      };
    }
    {
      __unkeyed-1 = "<leader>mf";
      group = "Flutter";
    }
    {
      __unkeyed-1 = "<leader>mfh";
      __unkeyed-2 = "<cmd>FlutterHotReload<CR>";
      desc = "Ejecutar el hot reload";
    }
    {
      __unkeyed-1 = "<leader>mfr";
      __unkeyed-2 = "<cmd>FlutterRun<CR>";
      desc = "Correr la aplicación";
    }
    {
      __unkeyed-1 = "<leader>mfs";
      __unkeyed-2 = "<cmd>FlutterVSplit<CR>";
      desc = "Split?";
    }
    {
      __unkeyed-1 = "<leader>mg";
      group = "Go";
    }
    {
      __unkeyed-1 = "<leader>mgc";
      __unkeyed-2 = "<cmd>GoCmt<CR>";
      desc = "Comentar!";
    }
    {
      __unkeyed-1 = "<leader>mge";
      __unkeyed-2 = "<cmd>GoIfErr<CR>";
      desc = "If err != Zzz";
    }
    {
      __unkeyed-1 = "<leader>mgi";
      __unkeyed-2 = "<cmd>GoImpl";
      desc = "Implementar.interfaz(struct)";
    }
    {
      __unkeyed-1 = "<leader>mgt";
      __unkeyed-2 = "<cmd>GoModTidy<CR>";
      desc = "Limpia las librerias";
    }
    {
      __unkeyed-1 = "<leader>ml";
      group = "LaTeX";
    }
    {
      __unkeyed-1 = "<leader>mlc";
      __unkeyed-2 = ":VimtexCompile<CR>";
      desc = "Compilar y ver el documento LaTeX";
    }
    {
      __unkeyed-1 = "<leader>mlp";
      __unkeyed-2 = "<cmd>lua require('nabla').popup({border = 'rounded'})<CR>";
      desc = "Vista previa de la expresion";
    }
    {
      __unkeyed-1 = "<leader>mm";
      group = "Markdown";
    }
    {
      __unkeyed-1 = "<leader>mmp";
      __unkeyed-2 = ":MarkdownPreview<CR>";
      desc = "Ver vista previa del documento";
    }
    {
      __unkeyed-1 = "<leader>mms";
      __unkeyed-2 = ":MarkdownPreviewStop<CR>";
      desc = "Parar la vista previa";
    }
    {
      __unkeyed-1 = "<leader>mmP";
      __unkeyed-2 = ":MarpToggle<CR>";
      desc = "Presentar con Marp";
    }
    {
      __unkeyed-1 = "<leader>mmS";
      __unkeyed-2 = ":MarpStatus<CR>";
      desc = "Estado sobre Marp";
    }
    {
      __unkeyed-1 = "<leader>mn";
      group = "Neorg";
    }
    {
      __unkeyed-1 = "<leader>mnE";
      __unkeyed-2 = ":Neorg export to-file<CR>";
      desc = "Exportar a Markdown";
    }
    {
      __unkeyed-1 = "<leader>mna";
      __unkeyed-2 = ":e ~/org/norg/agenda.norg<CR>";
      desc = "Abrir agenda";
    }
    {
      __unkeyed-1 = "<leader>mne";
      __unkeyed-2 = ":Neorg keybind all core.gtd.base.edit<CR>";
      desc = "Editar tareas";
    }
    {
      __unkeyed-1 = "<leader>mni";
      __unkeyed-2 = ":Neorg inject-metadata<CR>";
      desc = "Poner metadatos";
    }
    {
      __unkeyed-1 = "<leader>mnr";
      __unkeyed-2 = ":Neorg keybind all core.gtd.base.capture<CR>";
      desc = "Registrar tarea";
    }
    {
      __unkeyed-1 = "<leader>mnv";
      __unkeyed-2 = ":Neorg keybind all core.gtd.base.views<CR>";
      desc = "Ver tareas";
    }
    {
      __unkeyed-1 = "<leader>mr";
      group = "Rust";
    }
    {
      __unkeyed-1 = "<leader>mrf";
      __unkeyed-2 = "<cmd>lua require('crates').show_features_popup()<CR>";
      desc = "Ver los features";
    }
    {
      __unkeyed-1 = "<leader>mrl";
      __unkeyed-2 = "<cmd>lua require('crates').show_popup()<CR>";
      desc = "Ver mejor los crates";
    }

    # -- Grupo Terminal --
    {
      __unkeyed-1 = "<leader>t";
      group = "Terminal";
    }
    {
      __unkeyed-1 = "<leader>tb";
      __unkeyed-2 = "<cmd>tab DBUI<CR>";
      desc = "Conectarte con la base de datos...";
    }
    {
      __unkeyed-1 = "<leader>tf";
      __unkeyed-2 = "<cmd>FloatermNew<CR>";
      desc = "Terminal flotantte";
    }
    {
      __unkeyed-1 = "<leader>tg";
      __unkeyed-2 = "<cmd>tabnew<CR><cmd>term<CR>";
      desc = "Una terminal simple en una tab nueva";
    }
    {
      __unkeyed-1 = "<leader>ts";
      __unkeyed-2 = "<cmd>split<CR><cmd>term<CR>";
      desc = "Una terminal AUN MAS SIMPLE";
    }
    {
      __unkeyed-1 = "<leader>tt";
      __unkeyed-2 = "<cmd>ToggleTerm<CR>";
      desc = "Una terminal simple";
    }

    # -- Grupo Tabs --
    {
      __unkeyed-1 = "<leader>w";
      group = "Tabs";
    }
    {
      __unkeyed-1 = "<leader>wC";
      __unkeyed-2 = "<cmd>bd<CR>";
      desc = "Borrar buffer actual";
    }
    {
      __unkeyed-1 = "<leader>wN";
      __unkeyed-2 = "<cmd>tabnew<CR>";
      desc = "Nuevo tab";
    }
    {
      __unkeyed-1 = "<leader>wc";
      __unkeyed-2 = "<cmd>tabclose<CR>";
      desc = "Quitar tab";
    }
    {
      __unkeyed-1 = "<leader>wl";
      __unkeyed-2 = "<cmd>tabs<CR>";
      desc = "Lista de tabs";
    }
    {
      __unkeyed-1 = "<leader>wn";
      __unkeyed-2 = "<cmd>tabn<CR>";
      desc = "Siguiente tab";
    }
    {
      __unkeyed-1 = "<leader>wp";
      __unkeyed-2 = "<cmd>tabp<CR>";
      desc = "Anterior tab";
    }
    {
      __unkeyed-1 = "<leader>ws";
      __unkeyed-2 = "<cmd>split<CR>";
      desc = "Split de arriba y abajo";
    }
    {
      __unkeyed-1 = "<leader>wv";
      __unkeyed-2 = "<cmd>vsplit<CR>";
      desc = "Split de derecha a izquierda";
    }

    # -- Grupo Http --
    {
      __unkeyed-1 = "<leader>h";
      group = "Http (API rest)";
      icon = {
        icon = " ";
        color = "blue";
      };
    }
    {
      __unkeyed-1 = "<leader>hr";
      __unkeyed-2 = "<cmd>Rest run<CR>";
      desc = "Hacer petición del documento";
    }
    {
      __unkeyed-1 = "<leader>hR";
      __unkeyed-2 = "<cmd>Rest last<CR>";
      desc = "Volver a ejecutar la petición";
    }
    {
      __unkeyed-1 = "<leader>ho";
      __unkeyed-2 = "<cmd>Rest open<CR>";
      desc = "Abrir el panel de resultados";
    }
  ];
}
