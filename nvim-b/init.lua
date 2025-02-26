local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("opciones")
require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
  checker = { enabled = false, notify = false },
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "json",
  callback = function(ev)
    vim.bo[ev.buf].formatprg = "jq"
  end,
})
