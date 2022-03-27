local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
  virtual_text = {
    spacing = 1,
  },
  signs = true,
  underline = true,
  update_in_insert = true,
  serverty_sort = false,
})

--vim.diagnostic.spacing = 4

vim.cmd([[
  hi LspDiagnosticsVirtualTextError guifg=red gui=bold,italic,underline
  hi LspDiagnosticsVirtualTextWarning guifg=orange gui=bold,italic,underline
  hi LspDiagnosticsVirtualTextInformation guifg=yellow gui=bold,italic,underline
  hi LspDiagnosticsVirtualTextHint guifg=green gui=bold,italic,underline
]])
