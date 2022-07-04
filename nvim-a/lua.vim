"Configuracion escrita en lua
lua << EOF
require('gitsigns').setup()

require('bufferline').setup {
  options = {
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 14,
    max_prefix_length = 13,
    tab_size = 20,
    diagnostics = "coc",
  }
}

require("indent_blankline").setup {
  indentLine_enabled = 1,
  char = "▏",
  filetype_exclude = {
    "help",
    "terminal",
    "toggleterm",
    "floaterm",
    "",
  },
  show_trailing_blankline_indent = false,
  show_first_indent_level = false,
}

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
  },
})

vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END
]],
  true
)

EOF
