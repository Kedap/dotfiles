{pkgs, ...}: {
  extraPackages = with pkgs; [
    python3Packages.debugpy
    vscode-js-debug
    vscode-extensions.vadimcn.vscode-lldb
    delve
    vscode-extensions.xdebug.php-debug
  ];
  plugins = {
    dap-go.enable = true;
    dap-ui.enable = true;
    # dap-vscode-js.enable = true;
    dap-python.enable = true;
    dap-virtual-text.enable = true;
    dap = {
      enable = true;
    };

    # Integraciones con otros plugins
    cmp-dap.enable = true;
    # telescope.extensions.dap.enable = true;

    # Configuración de la UI de DAP
    dap-ui = {
      settings = {
        icons = {
          expanded = "▾";
          collapsed = "▸";
        };
        mappings = {
          expand = ["<CR>" "<2-LeftMouse>"];
          open = "o";
          remove = "d";
          edit = "e";
          repl = "r";
          toggle = "t";
        };
        layouts = [
          {
            elements = [
              {
                id = "scopes";
                size = 1;
              }
              {
                id = "breakpoints";
                size = 1;
              }
              {
                id = "stacks";
                size = 1;
              }
              {
                id = "watches";
                size = 1;
              }
            ];
            size = 40;
            position = "left";
          }
          {
            elements = [{id = "repl";} {id = "console";}];
            size = 10;
            position = "bottom";
          }
        ];
        floating = {
          border = "single";
          mappings.close = ["q" "<Esc>"];
        };
      };
    };
  };

  # 2. CONFIGURACIÓN DECLARATIVA DE DAP
  # Ahora, un único bloque `plugins.dap` para la configuración detallada.
  plugins.dap = {
    signs = {
      dapBreakpoint = {
        text = "●";
        texthl = "DiagnosticError";
      };
      dapStopped = {
        text = "";
        texthl = "debugPC";
      };
    };

    # ADAPTADORES
    adapters = {
      servers = {
        codelldb = {
          host = "127.0.0.1";
          port = "\${port}";
          executable = {
            command = "codelldb";
            args = ["--port" "\${port}"];
          };
        };
      };
      executables.php = {
        command = "node";
        # Ahora Nix puede encontrar este paquete porque está en `extraPackages` arriba.
        args = ["${pkgs.vscode-extensions.xdebug.php-debug}/share/vscode/extensions/xdebug.php-debug/out/phpDebug.js"];
      };
    };
  };

  # 3. LÓGICA DE LUA (CONFIGURACIONES DE LANZAMIENTO Y LISTENERS)
  extraConfigLua = ''
    -- Listeners para abrir/cerrar dap-ui automáticamente
    local dap, dapui = require("dap"), require("dapui")
    dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open({}) end
    dap.listeners.before.event_terminated["dapui_config"] = function() dapui.close({}) end
    dap.listeners.before.event_exited["dapui_config"] = function() dapui.close({}) end

    -- Setup de plugins que lo requieren
    require("dap-python").setup("${pkgs.python3Packages.debugpy}/bin/python")
    require("dap-go").setup()

    -- CONFIGURACIONES DE LANZAMIENTO
    dap.configurations.rust = {
      {
        name = "Ejecutar", type = "codelldb", request = "launch",
        program = function() return vim.fn.input("Ruta del ejecutable: ", vim.fn.getcwd() .. "/", "file") end,
        cwd = "''${workspaceFolder}", stopOnEntry = false,
      },
      {
        name = "Ejecutar con argumentos", type = "codelldb", request = "launch",
        program = function() return vim.fn.input("Ruta del ejecutable: ", vim.fn.getcwd() .. "/", "file") end,
        cwd = "''${workspaceFolder}", stopOnEntry = true,
        args = function() return vim.split(vim.fn.input("Argumentos: "), " +") end,
      },
    }
    dap.configurations.cpp = {
      {
        name = "Launch file", type = "codelldb", request = "launch",
        program = function() return vim.fn.input("Ruta del ejecutable: ", vim.fn.getcwd() .. "/", "file") end,
        cwd = "''${workspaceFolder}", stopOnEntry = false,
      },
    }
    dap.configurations.c = dap.configurations.cpp
    dap.configurations.php = {
      { type = "php", request = "launch", name = "Listen for Xdebug", port = 9003 },
    }

    for _, language in ipairs({ "typescript", "javascript" }) do
      dap.configurations[language] = {
        {
          type = "pwa-node", request = "launch", name = "Ejecutar este archivo",
          program = "''${file}", cwd = "''${workspaceFolder}",
        },
        {
          type = "pwa-node", request = "launch", name = "Ejecutar este archivo con argumentos",
          program = "''${file}", cwd = "''${workspaceFolder}",
          args = function() return vim.split(vim.fn.input("Argumentos: "), " +") end,
        },
        {
          type = "pwa-node", request = "attach", name = "Attach",
          processId = require("dap.utils").pick_process, cwd = "''${workspaceFolder}",
        },
      }
    end
  '';
}
