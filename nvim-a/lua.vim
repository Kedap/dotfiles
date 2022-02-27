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

require "format".setup {
    ["*"] = {
        {cmd = {"sed -i 's/[ \t]*$//'"}} -- remove trailing whitespace
    },
    lua = {
        {
            cmd = {
                function(file)
                    return string.format("luafmt -l %s -w replace %s", vim.bo.textwidth, file)
                end
            }
        }
    },
    go = {
        {
            cmd = {"gofmt -w", "goimports -w"},
            tempfile_postfix = ".tmp"
        }
    },
    javascriptreact = {
        {cmd = {"prettier -w", "yarn eslint --fix"}}
    },
    typescripttreact = {
        {cmd = {"prettier -w", "yarn eslint --fix"}}
    },
    typescript= {
        {cmd = {"prettier -w", "yarn eslint --fix"}}
    },
    javascript= {
        {cmd = {"prettier -w"}}
    },
    dart= {
        {cmd = {"dart format"}}
    },
}
EOF
