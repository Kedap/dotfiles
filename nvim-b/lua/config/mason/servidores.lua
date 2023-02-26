local lspconfig = require "lspconfig"
require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "lua_ls", "tsserver" },
  -- ensure_installed = { "sumneko_lua", "tsserver", "stylua" }
}
local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason-lspconfig").setup_handlers {
  function(server_name)
    lspconfig[server_name].setup {
      capabilities = capabilities,
    }
  end,
  ["lua_ls"] = function()
    require("lspconfig")["lua_ls"].setup {
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = {
              [vim.fn.expand "$VIMRUNTIME/lua"] = true,
              [vim.fn.stdpath "config" .. "/lua"] = true,
            },
          },
        },
      },
    }
  end,
  ["tsserver"] = function()
    require("lspconfig")["tsserver"].setup {
      capabilities = capabilities,
      single_file_support = false,
      root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", "jsconfig.json"),
    }
  end,
  ["denols"] = function()
    require("lspconfig")["denols"].setup {
      capabilities = capabilities,
      root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
    }
  end,
}

vim.api.nvim_command [[ hi def link LspReferenceText CursorLine ]]
vim.api.nvim_command [[ hi def link LspReferenceWrite CursorLine ]]
vim.api.nvim_command [[ hi def link LspReferenceRead CursorLine ]]
