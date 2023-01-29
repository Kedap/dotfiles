return {
  "mhartington/formatter.nvim",
  event = "BufWritePost",
  config = function()
    require("formatter").setup {
      filetype = {
        javascript = {
          -- prettier
          function()
            return {
              exe = "prettier",
              args = {
                "--stdin-filepath",
                vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
                "--single-quote",
              },
              stdin = true,
            }
          end,
        },
        rust = {
          function()
            return {
              exe = "rustfmt",
              args = { "--emit=stdout", "--edition 2021" },
              stdin = true,
            }
          end,
        },
        typescript = {
          -- prettier
          function()
            return {
              exe = "prettier",
              args = {
                "--stdin-filepath",
                vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
                "--single-quote",
              },
              stdin = true,
            }
          end,
        },
        typescriptreact = {
          -- prettier
          function()
            return {
              exe = "prettier",
              args = {
                "--stdin-filepath",
                vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
                "--single-quote",
              },
              stdin = true,
            }
          end,
        },
        javascriptreact = {
          -- prettier
          function()
            return {
              exe = "prettier",
              args = {
                "--stdin-filepath",
                vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
                "--single-quote",
              },
              stdin = true,
            }
          end,
        },
        json = {
          function()
            return {
              exe = "prettier",
              args = {
                "--stdin-filepath",
                vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
                "--double-quote",
              },
              stdin = true,
            }
          end,
        },
        dart = {
          function()
            return {
              exe = "dart",
              args = {
                "format",
              },
              stdin = true,
            }
          end,
        },
        lua = {
          function()
            return {
              exe = "stylua",
              args = {
                "--config-path ~/.config/stylua/stylua.toml",
                "-",
              },
              stdin = true,
            }
          end,
        },
        sh = {
          -- Shell Script Formato
          function()
            return {
              exe = "shfmt",
              args = { "-i", 2 },
              stdin = true,
            }
          end,
        },
        tex = {
          -- Para LaTeX
          function()
            return {
              exe = "latexindent",
              args = { "-" },
              stdin = true,
            }
          end,
        },
        -- Aqui es donde volvi a ver la documentacion de formatter y utilizo menos lineas de codigo
        python = {
          require("formatter.filetypes.python").black,
        },
        markdown = {
          require("formatter.filetypes.markdown").prettier,
        },
        toml = {
          require("formatter.filetypes.toml").taplo,
        },
        html = {
          require("formatter.filetypes.html").prettier,
        },
        ruby = {
          require("formatter.filetypes.ruby").rubocop,
        },
        c = {
          require("formatter.filetypes.c").clangformat,
        },
        cpp = {
          require("formatter.filetypes.cpp").clangformat,
        },
        go = {
          require("formatter.filetypes.go").gofmt,
        },
        php = {
          require("formatter.filetypes.php").phpcbf,
        },
      },
    }

    vim.api.nvim_exec(
      [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END
]],
      true
    )
  end,
}
