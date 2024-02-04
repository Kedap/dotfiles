local lspconfig = require("lspconfig")
require("mason").setup()
require("mason-lspconfig").setup({
  -- ensure_installed = { "lua_ls", "typescript-language-server" },
  ensure_installed = { "lua_ls", "tsserver" },
})
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local signature_config = {
  hint_enable = true,
  handler_opts = { border = "single" },
  max_width = 80,
}

require("mason-lspconfig").setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({
      capabilities = capabilities,
      on_attach = function(client, bufnr)
        require("lsp_signature").on_attach(signature_config, bufnr) -- Note: add in lsp client on-attach
      end,
    })
  end,
  ["lua_ls"] = function()
    require("lspconfig")["lua_ls"].setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = {
              [vim.fn.expand("$VIMRUNTIME/lua")] = true,
              [vim.fn.stdpath("config") .. "/lua"] = true,
            },
          },
        },
      },
    })
  end,
  ["tsserver"] = function()
    require("lspconfig")["tsserver"].setup({
      capabilities = capabilities,
      single_file_support = false,
      root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", "jsconfig.json"),
      on_attach = function(client, bufnr)
        require("lsp_signature").on_attach(signature_config, bufnr) -- Note: add in lsp client on-attach
      end,
    })
  end,
  ["denols"] = function()
    require("lspconfig")["denols"].setup({
      capabilities = capabilities,
      root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
      on_attach = function(client, bufnr)
        require("lsp_signature").on_attach(signature_config, bufnr) -- Note: add in lsp client on-attach
      end,
    })
  end,
})

vim.api.nvim_command([[ hi def link LspReferenceText CursorLine ]])
vim.api.nvim_command([[ hi def link LspReferenceWrite CursorLine ]])
vim.api.nvim_command([[ hi def link LspReferenceRead CursorLine ]])
