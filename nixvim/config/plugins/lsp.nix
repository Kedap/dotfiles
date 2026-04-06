{pkgs, ...}: let
in {
  plugins = {
    lsp = {
      enable = true;
      capabilities = ''
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        -- Puedes modificar 'capabilities' aquí si es necesario antes de que se use.
        -- Por ejemplo, si algún LSP específico necesita un ajuste fino que no
        -- if client.name == "some_server_needing_special_treatment" then
        --   capabilities.textDocument.completion.completionItem.snippetSupport = false
        -- end
        -- La tabla 'capabilities' modificada aquí será la que se use.
        -- NixVim se encarga de pasarla correctamente a la configuración de cada servidor.
      '';

      preConfig = ''
        -- Configuración global de diagnósticos
        vim.diagnostic.config({
          virtual_text = false,
          signs = true,
          underline = true,
          update_in_insert = false,
          severity_sort = true,
          float = {
            border = 'rounded',
            source = 'always',
            header = "",
            prefix = "",
          },
        })

        vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
          vim.lsp.handlers.hover,
          { border = 'rounded' }
        )

        vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
          vim.lsp.handlers.signature_help,
          { border = 'rounded' }
        )

        -- Opcional: Estilo por defecto para todas las ventanas de lspconfig
        -- require('lspconfig.ui.windows').default_options.border = 'rounded'
      '';

      postConfig = ''
        -- Iconos personalizados para los signos de diagnóstico
        local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
        -- local signs = { Error = " ", Warn = " ", Hint = "󰌵 ", Info = "󰋼 " }
        for type, icon in pairs(signs) do
          local hl = "DiagnosticSign" .. type
          -- Define el signo con su icono y grupo de resaltado
          vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
        end
      '';

      servers = {
        bashls = {enable = true;};
        cssls = {enable = true;};
        dockerls = {enable = true;};
        gopls = {enable = true;};
        html = {enable = true;};
        jsonls = {enable = true;};
        marksman = {enable = true;};
        phpactor = {enable = true;};
        pyright = {enable = true;};
        tailwindcss = {enable = true;};
        taplo = {enable = true;};
        ts_ls = {enable = true;};
        clangd = {enable = true;};
        csharp_ls = {enable = true;};
        jdtls = {enable = true;};
        shopify_theme_ls = {
          enable = true;
          package = null;
        };
        arduino_language_server = {enable = true;};
        solargraph = {enable = true;};
        ruff = {enable = true;};
        dartls = {enable = true;};

        graphql = {
          enable = true;
          package = pkgs.nodePackages.graphql-language-service-cli;
        };

        lua_ls = {
          enable = true;
          # Las 'capabilities' globales se aplicarán aquí también.
          settings = {
            Lua = {
              runtime.version = "LuaJIT";
              diagnostics.globals = ["vim"];
              workspace.library = [{__raw = "vim.api.nvim_get_runtime_file('', true)";}];
              telemetry.enable = false;
            };
          };
        };
        nixd = {
          enable = true;
          settings = {
            formatting.command = ["nixfmt-rfc-style"];
          };
        };
        yamlls = {
          enable = true;
          settings = {
            yaml = {
              schemaStore.enable = false;
            };
          };
        };

        emmet_language_server = {
          enable = true;
          filetypes = [
            "astro"
            "css"
            "eruby"
            "html"
            "htmlangular"
            "htmldjango"
            "javascriptreact"
            "less"
            "pug"
            "sass"
            "scss"
            "svelte"
            "templ"
            "typescriptreact"
            "vue"
            "liquid"
          ];
        };
      };
    };
  };
}
