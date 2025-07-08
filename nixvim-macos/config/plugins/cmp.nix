{lib, ...}: let
  get_bufnrs = {
    __raw = ''
      function()
        local buf_size_limit = 1024 * 1024 -- 1MB
        local bufs = vim.api.nvim_list_bufs()
        local valid_bufs = {}
        for _, buf in ipairs(bufs) do
          if vim.api.nvim_buf_is_loaded(buf) and vim.api.nvim_buf_get_offset(buf, vim.api.nvim_buf_line_count(buf)) < buf_size_limit then
            table.insert(valid_bufs, buf)
          end
        end
        return valid_bufs
      end
    '';
  };
in {
  plugins = {
    cmp = {
      enable = true;
      autoEnableSources = true;
    };
    crates = {
      enable = true;
      settings = {
        lsp = {
          enabled = true;
          actions = true;
          completion = true;
          hover = true;
        };
        completion = {
          cmp = {
            enabled = true;
          };
          crates = {
            enabled = true;
            max_results = 8;
            min_chars = 3;
          };
        };
      };
    };
    cmp-nvim-lsp.enable = true;
    cmp-path.enable = true;
    cmp-buffer.enable = true;
    cmp-calc.enable = true;
    cmp-emoji.enable = true;
    cmp-spell.enable = true;
    cmp-git.enable = true;
    windsurf-nvim.enable = true;
    luasnip.enable = true;
    # cmp-luasnip.enable = true;
    friendly-snippets.enable = true;
    lspkind.enable = true;
    cmp-dap.enable = true;
    cmp-cmdline.enable = true;
  };

  plugins.cmp.settings = {
    mapping = {
      "<C-b>" = "cmp.mapping.scroll_docs(-4)";
      "<C-f>" = "cmp.mapping.scroll_docs(4)";
      "<C-Space>" = "cmp.mapping.complete()";
      "<C-e>" = "cmp.mapping.abort()";
      "<CR>" = "cmp.mapping.confirm({ select = true })";
      "<Up>" = "cmp.mapping.select_prev_item()";
      "<Down>" = "cmp.mapping.select_next_item()";
      "<Tab>" = {
        __raw = ''
          function(fallback)
            local cmp = require("cmp")
            local luasnip = require("luasnip")
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              local has_words_before = function()
                local line, col = unpack(vim.api.nvim_win_get_cursor(0))
                if col == 0 then return false end
                local line_to_cursor = vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(1, col)
                return line_to_cursor:match("%S") ~= nil
              end
              if has_words_before() then
                cmp.complete()
              else
                fallback()
              end
            end
          end
        '';
      };
      "<S-Tab>" = {
        __raw = ''
          function(fallback)
            local cmp = require("cmp")
            local luasnip = require("luasnip")
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end
        '';
      };
    };

    preselect = "cmp.PreselectMode.None";
    snippet.expand = {
      __raw = ''
        function(args)
          require("luasnip").lsp_expand(args.body)
        end
      '';
    };

    window.documentation.__raw = "require('cmp').config.window.bordered()";
    experimental.ghost_text = true;

    sources = [
      {
        name = "nvim_lsp";
        priority = 1000;
      }
      {
        name = "codeium";
        priority = 900;
      }
      {
        name = "luasnip";
        priority = 800;
      }
      {
        name = "buffer";
        priority = 700;
        option = {inherit get_bufnrs;};
      }
      {
        name = "path";
        priority = 600;
      }
      {
        name = "crates";
        priority = 500;
      }
      {
        name = "git";
        priority = 450;
      }
      {
        name = "calc";
        priority = 400;
      }
      {
        name = "spell";
        priority = 300;
      }
      {
        name = "emoji";
        priority = 200;
      }
    ];

    formatting.format = lib.mkForce {
      __raw = ''
        require("lspkind").cmp_format({
          maxwidth = 50,
          symbol_map = { Codeium = "" },
        })
      '';
    };
  };

  plugins.cmp = {
    filetype = {
      gitcommit.sources = [
        {name = "git";}
        {name = "luasnip";}
        {name = "buffer";}
      ];
      dap-repl.sources = [{name = "dap";}];
      dapui_watches.sources = [{name = "dap";}];
      dapui_hover.sources = [{name = "dap";}];
    };

    cmdline = {
      "/" = {
        mapping.__raw = "require('cmp').mapping.preset.cmdline()";
        sources = [{name = "buffer";}];
      };
      "?" = {
        mapping.__raw = "require('cmp').mapping.preset.cmdline()";
        sources = [{name = "buffer";}];
      };
      ":" = {
        mapping.__raw = "require('cmp').mapping.preset.cmdline()";
        sources = [{name = "path";} {name = "cmdline";}];
      };
    };
  };

  extraConfigLua = ''
    -- Carga los snippets de friendly-snippets para que luasnip los pueda usar
    require("luasnip.loaders.from_vscode").lazy_load()

    -- Tu configuración de cmp_git
    require("cmp_git").setup()
  '';
}
