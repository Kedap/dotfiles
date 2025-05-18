local lspconfig = require("lspconfig")
require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls" },
  automatic_enable = {
    exclude = {
      "denols",
      "emmet_ls",
      "clangd",
    },
  },
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
capabilities.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true,
}
local signature_config = {
  hint_enable = true,
  handler_opts = { border = "single" },
  max_width = 80,
}

vim.lsp.config("*", {
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    require("lsp_signature").on_attach(signature_config, bufnr)
  end,
})
vim.lsp.config("denols", {
  capabilities = capabilities,
  root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
  on_attach = function(client, bufnr)
    require("lsp_signature").on_attach(signature_config, bufnr) -- Note: add in lsp client on-attach
  end,
})
vim.lsp.config("emmet_ls", {
  capabilities = capabilities,
  filetypes = {
    "astro",
    "css",
    "eruby",
    "html",
    "htmldjango",
    "javascriptreact",
    "less",
    "pug",
    "sass",
    "scss",
    "svelte",
    "typescriptreact",
    "vue",
    "htmlangular",
    "liquid",
  },
  on_attach = function(client, bufnr)
    require("lsp_signature").on_attach(signature_config, bufnr) -- Note: add in lsp client on-attach
  end,
})

local cmd = { "clangd" }
if vim.env.IDF_PATH then
  cmd = { "/home/kedap/.espressif/tools/esp-clang/esp-18.1.2_20240912/esp-clang/bin/clangd" }
end
vim.lsp.config("clangd", {
  cmd = cmd,
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    require("lsp_signature").on_attach(signature_config, bufnr)
  end,
})

vim.api.nvim_command([[ hi def link LspReferenceText CursorLine ]])
vim.api.nvim_command([[ hi def link LspReferenceWrite CursorLine ]])
vim.api.nvim_command([[ hi def link LspReferenceRead CursorLine ]])
