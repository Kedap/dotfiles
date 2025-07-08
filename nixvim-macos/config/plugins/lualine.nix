{
  lib,
  config,
  ...
}: let
  getLspClientNameFunction = ''
    function()
      local msg = "Sin LSP"
      local buf_ft = vim.api.nvim_get_option_value("filetype", { buf = 0 })
      local clients = vim.lsp.get_clients({ bufnr = 0 })
      if next(clients) == nil then
        return msg
      end
      for _, client in ipairs(clients) do
        if client.config and client.config.filetypes then
          local filetypes = client.config.filetypes
          if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
            return client.name
          end
        end
      end
      return msg
    end
  '';

  lspComponent = {
    __unkeyed-1 = {__raw = getLspClientNameFunction;};
    icon = " ";
    color = {fg = "#ffffff";};
  };

  lualineStyles = {
    burbuja = {
      settings = {
        options = {
          icons_enabled = true;
          section_separators = {
            left = "";
            right = "";
          };
          component_separators = {
            left = "";
            right = "";
          };
          always_divide_middle = true;
        };
        sections = {
          lualine_a = ["mode"];
          lualine_b = ["branch" "diff" "diagnostics"];
          lualine_c = ["filename"];
          lualine_x = ["encoding" "fileformat" "filetype"];
          lualine_y = ["progress"];
          lualine_z = ["location"];
        };
        inactive_sections = {
          lualine_c = ["filename"];
          lualine_x = ["location"];
        };
        extensions = ["nvim-tree" "toggleterm" "fugitive" "quickfix" "nvim-dap-ui"];
      };
    };

    buble = {
      settings = {
        options = {
          icons_enabled = true;
          section_separators = {
            left = "";
            right = "";
          };
          component_separators = {
            left = "";
            right = "";
          };
          always_divide_middle = true;
        };
        sections = {
          lualine_a = ["mode"];
          lualine_b = [
            {
              __unkeyed-1 = "branch";
              icon = "";
            }
            "diff"
            "diagnostics"
          ];
          lualine_c = [
            {
              __unkeyed-1 = "filename";
              symbols = {
                modified = " []";
                readonly = " [󰃀]";
                unnamed = " [Sin nombre]";
              };
            }
          ];
          lualine_x = [
            "encoding"
            "fileformat"
            lspComponent
            "filetype"
          ];
          lualine_y = ["progress"];
          lualine_z = ["location"];
        };
        inactive_sections = {
          lualine_c = ["filename"];
          lualine_x = ["location"];
        };
        extensions = ["nvim-tree" "toggleterm" "fugitive" "quickfix" "nvim-dap-ui"];
      };
    };

    malvado = let
      conditions = {
        buffer_not_empty = {__raw = "function() return vim.fn.empty(vim.fn.expand('%:t')) ~= 1 end";};
        hide_in_width = {__raw = "function() return vim.fn.winwidth(0) > 80 end";};
      };
    in {
      settings = {
        options = {
          component_separators = "";
          section_separators = "";
          # icons_enabled = true; # Podrías añadirlo si es relevante
        };
        sections = {
          lualine_c = [
            {
              __unkeyed-1 = {__raw = "function() return '▊' end";};
              color = {fg = "#51afef";};
              padding = {
                left = 0;
                right = 1;
              };
            }
            {
              __unkeyed-1 = {__raw = ''function() local m = {n='󰃛',i='',v='󰇀',V='󰇀',c='',s='󰝷',S='󰝷',R='',r='',t=''} return m[vim.fn.mode()] or '' end '';};
              color = {__raw = ''function() local c = {n='#ec5f67',i='#98be65',v='#51afef',c='#c678dd',s='#FF8800',R='#a9a1e1',r='#008080'} return {fg=c[vim.fn.mode():sub(1,1)]} end '';};
              padding = {right = 1;};
            }
            {
              __unkeyed-1 = "filesize";
              cond = conditions.buffer_not_empty;
            }
            {
              __unkeyed-1 = "filename";
              cond = conditions.buffer_not_empty;
              color = {
                fg = "#c678dd";
                gui = "bold";
              };
            }
            "location"
            {
              __unkeyed-1 = "progress";
              color = {
                fg = "#bbc2cf";
                gui = "bold";
              };
            }
            {
              __unkeyed-1 = "diagnostics";
              sources = ["nvim_diagnostic"];
              symbols = {
                error = " ";
                warn = " ";
                info = " ";
              };
              diagnostics_color = {
                error = {fg = "#ec5f67";};
                warn = {fg = "#ECBE7B";};
                info = {fg = "#008080";};
              };
            }
            {__unkeyed-1 = {__raw = "function() return '%=' end";};}
            lspComponent
          ];
          lualine_x = [
            {
              __unkeyed-1 = "o:encoding"; # Esto es específico de Lualine, no una opción general
              fmt = "string.upper";
              cond = conditions.hide_in_width;
              color = {
                fg = "#98be65";
                gui = "bold";
              };
            }
            {
              __unkeyed-1 = "fileformat";
              fmt = "string.upper";
              icons_enabled = false;
              color = {
                fg = "#98be65";
                gui = "bold";
              };
            }
            {
              __unkeyed-1 = "branch";
              icon = "";
              color = {
                fg = "#a9a1e1";
                gui = "bold";
              };
            }
            {
              __unkeyed-1 = "diff";
              symbols = {
                added = " ";
                modified = " ";
                removed = " ";
              };
              diff_color = {
                added = {fg = "#98be65";};
                modified = {fg = "#FF8800";};
                removed = {fg = "#ec5f67";};
              };
              cond = conditions.hide_in_width;
            }
            {
              __unkeyed-1 = {__raw = "function() return '▊' end";};
              color = {fg = "#51afef";};
              padding = {left = 1;};
            }
          ];
        };
      };
    };

    novoline = let
      conditions = {
        buffer_not_empty = {__raw = "function() return vim.fn.empty(vim.fn.expand('%:t')) ~= 1 end";};
        hide_in_width = {__raw = "function() return vim.fn.winwidth(0) > 80 end";};
      };
    in {
      settings = {
        options = {
          component_separators = "";
          section_separators = "";
          # icons_enabled = true; # Podrías añadirlo si es relevante
        };
        sections = {
          lualine_a = [];
          lualine_b = [];
          lualine_y = [];
          lualine_z = [];
          lualine_c = [
            {
              __unkeyed-1 = {__raw = "function() return '' end";};
              color = {fg = "#51afef";};
              padding = {
                left = 0;
                right = 1;
              };
            }
            {
              __unkeyed-1 = {__raw = ''function() local m = {n='󰃛',i='',v='󰇀',V='󰇀',c='',s='󰝷',S='󰝷',R='',r='',t=''} return m[vim.fn.mode()] or '' end '';};
              color = {__raw = ''function() local c = {n='#fc626a',i='#98be65',v='#51afef',c='#c678dd',s='#FF8800',R='#a9a1e1',r='#55b5c1'} return {fg=c[vim.fn.mode():sub(1,1)]} end '';};
              padding = {right = 1;};
            }
            {
              __unkeyed-1 = {__raw = "function() return '▊' end";};
              color = {fg = "#51afef";};
              padding = {
                left = 0;
                right = 1;
              };
            }
            {
              __unkeyed-1 = "filetype";
              colored = true;
              cond = conditions.buffer_not_empty;
            }
            {
              __unkeyed-1 = {__raw = "function() return '' end";};
              color = {fg = "#51afef";};
              padding = {
                left = 0;
                right = 1;
              };
            }
            {
              __unkeyed-1 = "filesize";
              cond = conditions.buffer_not_empty;
              color = {fg = "#c678dd";};
            }
            {
              __unkeyed-1 = {__raw = "function() return '' end";};
              color = {fg = "#51afef";};
              padding = {
                left = 0;
                right = 1;
              };
            }
            {
              __unkeyed-1 = "location";
              color = {fg = "#FF8800";};
            }
            {
              __unkeyed-1 = {__raw = "function() return '' end";};
              color = {fg = "#51afef";};
              padding = {
                left = 0;
                right = 1;
              };
            }
            {
              __unkeyed-1 = "progress";
              color = {
                fg = "#D0AE19";
                gui = "bold";
              };
            }
            {
              __unkeyed-1 = {__raw = "function() return '' end";};
              color = {fg = "#51afef";};
              padding = {
                left = 0;
                right = 1;
              };
            }
            {
              __unkeyed-1 = "diagnostics";
              sources = ["nvim_diagnostic"];
              symbols = {
                error = " ";
                warn = " ";
                info = " ";
                hint = "󰌵 ";
              };
              diagnostics_color = {
                error = {fg = "#fc626a";};
                warn = {fg = "#f6c57e";};
                info = {fg = "#55b5c1";};
                hint = {fg = "#FFFFFF";};
              };
            }
            {
              __unkeyed-1 = {__raw = "function() return '' end";};
              color = {fg = "#51afef";};
              padding = {
                left = 0;
                right = 1;
              };
            }
            {__unkeyed-1 = {__raw = "function() return '%=' end";};}
            {
              __unkeyed-1 = "filetype";
              cond = conditions.buffer_not_empty;
              icon_only = true;
            }
            {
              __unkeyed-1 = "filename";
              cond = conditions.buffer_not_empty;
              symbols = {
                modified = " ●";
                readonly = " 󰞚";
                unnamed = "";
              };
              color = {
                fg = "#ffffff";
                gui = "bold";
              };
            }
          ];
          lualine_x = [
            {
              __unkeyed-1 = {__raw = "function() return '' end";};
              color = {fg = "#51afef";};
              padding = {
                left = 0;
                right = 1;
              };
            }
            {
              __unkeyed-1 = "diff";
              symbols = {
                added = " ";
                modified = " ";
                removed = " ";
              };
              diff_color = {
                added = {fg = "#98be65";};
                modified = {fg = "#FF8800";};
                removed = {fg = "#fc626a";};
              };
              cond = conditions.hide_in_width;
            }
            {
              __unkeyed-1 = {__raw = "function() return '' end";};
              color = {fg = "#51afef";};
              padding = {
                left = 0;
                right = 1;
              };
            }
            lspComponent
            {
              __unkeyed-1 = {__raw = "function() return '' end";};
              color = {fg = "#51afef";};
              padding = {
                left = 0;
                right = 1;
              };
            }
            {
              __unkeyed-1 = "o:encoding";
              fmt = "string.upper";
              cond = conditions.hide_in_width;
              color = {
                fg = "#0C5E70";
                gui = "bold";
              };
            }
            {
              __unkeyed-1 = {__raw = "function() return '' end";};
              color = {fg = "#51afef";};
              padding = {
                left = 0;
                right = 1;
              };
            }
            {
              __unkeyed-1 = "fileformat";
              fmt = "string.upper";
              icons_enabled = true;
              color = {
                fg = "#98be65";
                gui = "bold";
              };
            }
            {
              __unkeyed-1 = {__raw = "function() return '' end";};
              color = {fg = "#51afef";};
              padding = {
                left = 0;
                right = 1;
              };
            }
            {
              __unkeyed-1 = "branch";
              icon = "";
              color = {
                fg = "#a9a1e1";
                gui = "bold";
              };
            }
            {
              __unkeyed-1 = {__raw = "function() return '' end";};
              color = {fg = "#51afef";};
              padding = {left = 1;};
            }
          ];
        };
        extensions = ["nvim-tree" "toggleterm" "fugitive" "quickfix" "nvim-dap-ui"];
      };
    };
  };
in {
  options.my.lualine = {
    style = lib.mkOption {
      type = lib.types.enum (builtins.attrNames lualineStyles);
      default = "burbuja";
      description = "El estilo (layout de componentes) a usar para Lualine.";
    };
    theme = lib.mkOption {
      type = lib.types.str;
      default = "auto";
      description = "El tema de colores de Lualine (ej. 'tokyonight', 'dracula', 'auto').";
    };
  };

  config = {
    plugins = {
      lualine = {
        enable = true;
        settings =
          lib.recursiveUpdate
          (lualineStyles.${config.my.lualine.style}.settings)
          {options.theme = config.my.lualine.theme;};
      };
      web-devicons.enable = true;
    };
  };
}
