require("formatter").setup({
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
      -- Rustfmt
      function()
        return {
          exe = "rustfmt",
          args = { "--emit=stdout" },
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
    python = {
      require("formatter.filetypes.python").black
    },
    markdown = {
      require("formatter.filetypes.markdown").prettier
    },
  },
})

vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END
]] ,
  true
)
