require("nvim-lsp-installer").setup({})

-- Configurando de manera automatica
local instalador = require("nvim-lsp-installer")
local servidores = {}
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

for _, servidor in ipairs(instalador.get_installed_servers()) do
  table.insert(servidores, servidor.name)
end
for _, servidor in ipairs(servidores) do
  if servidor == "sumneko_lua" then
    require("lspconfig")["sumneko_lua"].setup({
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
  else
    require("lspconfig")[servidor].setup({
      capabilities = capabilities,
    })
  end
end

-- Servidores locales configurados mnual
require("lspconfig").hls.setup({
  capabilities = capabilities,
})

--local servidores = {
--"jsonls",
--"lemminx",
--"solargraph",
--"spectral",
--"html",
--"taplo",
--"tsserver",
--"sumneko_lua",
--"intelephense",
--"cssls",
--"dartls",
--"emmet_ls",
--"bashls",
--}

--local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
--for _, servidor in ipairs(servidores) do
--if servidor == "sumneko_lua" then
--require("lspconfig")["sumneko_lua"].setup({
--capabilities = capabilities,
--settings = {
--Lua = {
--runtime = { version = "LuaJIT", path = vim.split(package.path, ";") },
--diagnostics = { globals = { "vim" } },
--workspace = { library = vim.api.nvim_get_runtime_file("", true), checkThirdParty = false },
--telemetry = { enable = false },
--},
--},
--})
--else
--require("lspconfig")[servidor].setup({
--capabilities = capabilities,
--})
--end
--end

-- Configuracion para lua
--local ruta_runtime_lua = vim.split(package.path, ";")
--table.insert(ruta_runtime_lua, "lua/?.lua")
--table.insert(ruta_runtime_lua, "lua/?/init.lua")
--lspconfig.sumneko_lua.setup({
--settings = {
--Lua = {
--runtime = {
---- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
--version = "LuaJIT",
---- Setup your lua path
--path = ruta_runtime_lua,
--},
--diagnostics = {
---- Get the language server to recognize the `vim` global
--globals = { "vim" },
--},
--workspace = {
---- Make the server aware of Neovim runtime files
--library = vim.api.nvim_get_runtime_file("", true),
--checkThirdParty = false,
--},
---- Do not send telemetry data containing a randomized but unique identifier
--telemetry = {
--enable = false,
--},
--},
--},
--})

--local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
--local listaservidores = {
--"html",
--"cssls",
--"tsserver",
--"pylsp",
--"rust_analyzer",
--"emmet_ls",
--"dartls",
--}
--
--for _, servidor in ipairs(listaservidores) do
--  require'lspconfig'[servidor].setup {
--    capabilities = capabilities,
--  }
--end
--
---- Lua
--local runtime_path = vim.split(package.path, ';')
--table.insert(runtime_path, "lua/?.lua")
--table.insert(runtime_path, "lua/?/init.lua")
--
--require'lspconfig'.sumneko_lua.setup {
--  settings = {
--    Lua = {
--      runtime = {
--        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
--        version = 'LuaJIT',
--        -- Setup your lua path
--        path = runtime_path,
--      },
--      diagnostics = {
--        -- Get the language server to recognize the `vim` global
--        globals = {'vim'},
--      },
--      workspace = {
--        -- Make the server aware of Neovim runtime files
--        library = vim.api.nvim_get_runtime_file("", true),
--      },
--      -- Do not send telemetry data containing a randomized but unique identifier
--      telemetry = {
--        enable = false,
--      },
--    },
--  },
--}
