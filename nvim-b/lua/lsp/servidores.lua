local lsp_installer = require("nvim-lsp-installer")
--lsp_installer.on_server_ready(function(server)
--local opts = {}
--server:setup(opts)
--end)

lsp_installer.on_server_ready(function(server)
  local capabilities = require("cmp_nvim_lsp").update_capabilities(
    vim.lsp.protocol.make_client_capabilities()
  )
  local opts = { capabilitie = capabilities }
  if server.name == "sumneko_lua" then
    opts = vim.tbl_deep_extend("force", {
      settings = {
        Lua = {
          runtime = {
            version = "LuaJIT",
            path = vim.split(package.path, ";"),
          },
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false,
          },
          telemetry = {
            enable = false,
          },
        },
      },
    }, opts)
  end
  server:setup(opts)
end)

--local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
--local listaservidores = {
--  'html',
--  'cssls',
--  'tsserver',
--  'pylsp',
--  'rust_analyzer',
--  'emmet_ls',
--  'dartls',
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
