local saga = require("lspsaga")

saga.init_lsp_saga({
  server_filetype_map = {
    typescript = "typescript",
  },
  finder_action_keys = {
    open = "o",
    vsplit = "v",
    split = "s",
    tabe = "t",
    quit = "q",
    scroll_down = "<C-f>",
    scroll_up = "<C-b>",
  },
})
