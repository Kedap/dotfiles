local saga = require "lspsaga"

saga.init_lsp_saga {
  border_style = "rounded",
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
  code_action_lightbulb = {
    enable = true,
    enable_in_insert = true,
    cache_code_action = true,
    sign = false,
    update_time = 150,
    sign_priority = 20,
    virtual_text = true,
  },
}
