require("bufferline").setup({})
vim.cmd([[
  nnoremap <silent>gbn :BufferLineCycleNext<CR>
  nnoremap <silent>gbp :BufferLineCyclePrev<CR>
]])
