-- lua/utils.lua
local M = {}

function M.get_lsp_client_name()
  local msg = "Sin LSP"
  local buf_ft = vim.api.nvim_get_option_value("filetype", { buf = 0 })
  local clients = vim.lsp.get_clients({ bufnr = 0 }) -- Más eficiente filtrar por buffer
  if next(clients) == nil then
    return msg
  end
  for _, client in ipairs(clients) do
    -- Algunos LSP no listan filetypes, comprobamos primero
    if client.config and client.config.filetypes then
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return client.name
      end
    end
  end
  return msg
end

return M
