return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  ft = "norg",
  dependencies = { { "nvim-lua/plenary.nvim" } },
  config = function()
    require("neorg").setup {
      load = {
        ["core.defaults"] = {},
        ["core.norg.completion"] = {
          config = {
            engine = "nvim-cmp", -- we current support nvim-compe and nvim-cmp only
          },
        },
        ["core.norg.dirman"] = {
          config = {
            workspaces = {
              home = "~/norg/",
            },
          },
        },

        ["core.export"] = {
          config = { -- Note that this table is optional and doesn't need to be provided
            export_dir = "~/norg/",
          },
        },
        ["core.export.markdown"] = {
          config = { -- Note that this table is optional and doesn't need to be provided
            extensions = "all",
            extension = "md",
          },
        },

        ["core.norg.concealer"] = {
          config = {
            icons = {
              todo = {
                enabled = true,

                done = {
                  enabled = true,
                  icon = "",
                  pattern = "^(%s*%-%s+%[%s*)x%s*%]%s+",
                  whitespace_index = 1,
                  highlight = "NeorgTodoItemDoneMark",
                  padding_before = 0,
                },

                pending = {
                  enabled = true,
                  icon = "",
                  pattern = "^(%s*%-%s+%[%s*)%*%s*%]%s+",
                  whitespace_index = 1,
                  highlight = "NeorgTodoItemPendingMark",
                  padding_before = 0,
                },

                undone = {
                  enabled = true,
                  icon = "×",
                  pattern = "^(%s*%-%s+%[)%s+]%s+",
                  whitespace_index = 1,
                  highlight = "TSComment",
                  padding_before = 0,
                },
              },

              quote = {
                enabled = true,
                icon = "∣",
                pattern = "^(%s*)>%s+",
                whitespace_index = 1,
                highlight = "NeorgQuote",
                padding_before = 0,
              },

              heading = {
                enabled = true,

                level_1 = {
                  enabled = true,
                  icon = "◉",
                  pattern = "^(%s*)%*%s+",
                  whitespace_index = 1,
                  highlight = "NeorgHeading1",
                  padding_before = 0,
                },

                level_2 = {
                  enabled = true,
                  icon = "○",
                  pattern = "^(%s*)%*%*%s+",
                  whitespace_index = 1,
                  highlight = "NeorgHeading2",
                  padding_before = 1,
                },

                level_3 = {
                  enabled = true,
                  icon = "✿",
                  pattern = "^(%s*)%*%*%*%s+",
                  whitespace_index = 1,
                  highlight = "NeorgHeading3",
                  padding_before = 2,
                },

                level_4 = {
                  enabled = true,
                  icon = "•",
                  pattern = "^(%s*)%*%*%*%*%s+",
                  whitespace_index = 1,
                  highlight = "NeorgHeading4",
                  padding_before = 3,
                },
              },

              marker = {
                enabled = true,
                icon = "",
                pattern = "^(%s*)%|%s+",
                whitespace_index = 1,
                highlight = "NeorgMarker",
                padding_before = 0,
              },
            },
          },
        },
      },
    }

    local parser_configs = require("nvim-treesitter.parsers").get_parser_configs()

    parser_configs.norg_meta = {
      install_info = {
        url = "https://github.com/nvim-neorg/tree-sitter-norg-meta",
        files = { "src/parser.c" },
        branch = "main",
      },
    }

    parser_configs.norg_table = {
      install_info = {
        url = "https://github.com/nvim-neorg/tree-sitter-norg-table",
        files = { "src/parser.c" },
        branch = "main",
      },
    }
  end,
}