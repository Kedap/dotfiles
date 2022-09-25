local lspconfig = require "lspconfig"
require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "sumneko_lua", "tsserver" },
  -- ensure_installed = { "sumneko_lua", "tsserver", "stylua" }
}
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
local navic = require "nvim-navic" -- TODO: Con la siguiente version estable utilizar el winbar

local on_attach = function(client, bufnr)
  navic.attach(client, bufnr)
end

require("mason-lspconfig").setup_handlers {
  function(server_name)
    lspconfig[server_name].setup {
      capabilities = capabilities,
      on_attach = on_attach,
    }
  end,
  ["sumneko_lua"] = function()
    require("lspconfig")["sumneko_lua"].setup {
      capabilities = capabilities,
      on_attach = on_attach,
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
}

vim.api.nvim_command [[ hi def link LspReferenceText CursorLine ]]
vim.api.nvim_command [[ hi def link LspReferenceWrite CursorLine ]]
vim.api.nvim_command [[ hi def link LspReferenceRead CursorLine ]]
