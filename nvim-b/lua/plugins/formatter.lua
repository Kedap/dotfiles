return {
  "mhartington/formatter.nvim",
  event = "BufWritePost",
  config = function()
    require("formatter").setup({
      filetype = {
        javascript = {
          require("formatter.filetypes.javascript").prettier,
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
          require("formatter.filetypes.typescript").prettier,
        },
        typescriptreact = {
          require("formatter.filetypes.typescriptreact").prettier,
        },
        javascriptreact = {
          require("formatter.filetypes.javascriptreact").prettier,
        },
        json = {
          require("formatter.filetypes.json").prettier,
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
        cmake = {
          require("formatter.filetypes.cmake").cmakeformat,
        },
        go = {
          require("formatter.filetypes.go").gofmt,
        },
        php = {
          require("formatter.filetypes.php").phpcbf,
        },
        jsonc = {
          require("formatter.filetypes.json").prettier,
        },
        yaml = {
          require("formatter.filetypes.yaml").prettier,
        },
        java = {
          require("formatter.filetypes.java").google_java_format,
        },
        liquid = {
          require("formatter.filetypes.javascript").prettier,
        },
        graphql = {
          require("formatter.filetypes.graphql").prettier,
        },
      },
    })

    vim.cmd([[
      augroup FormatAutogroup
        autocmd!
        autocmd BufWritePost * FormatWrite
      augroup END
      ]])
  end,
}
