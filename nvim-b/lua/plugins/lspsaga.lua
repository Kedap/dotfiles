return {
  "glepnir/lspsaga.nvim",
  event = "BufRead",
  dependencies = { "nvim-tree/nvim-web-devicons", name = "neovim-web-devicons" },
  opts = {
    finder = {
      edit = { "o", "<CR>" },
      vsplit = "s",
      split = "v",
      tabe = "t",
      quit = { "q", "<ESC>" },
    },
    lightbulb = {
      enable = true,
      enable_in_insert = true,
      sign = false,
      sign_priority = 40,
      virtual_text = true,
    },
    symbol_in_winbar = {
      enable = true,
      show_file = false,
    },
    ui = {
      -- currently only round theme
      theme = "round",
      -- this option only work in neovim 0.9
      title = true,
      -- border type can be single,double,rounded,solid,shadow.
      border = "rounded",
      winblend = 0,
      expand = "",
      collapse = "",
      preview = " ",
      code_action = "💡",
      diagnostic = "🐞",
      incoming = "󰏷 ",
      outgoing = "󰏻 ",
      colors = {
        --float window normal background color
        normal_bg = "#252837",
        --title background color
        title_bg = "#afd700",
        red = "#e95678",
        magenta = "#b33076",
        orange = "#FF8700",
        yellow = "#f7bb3b",
        green = "#afd700",
        cyan = "#36d0e0",
        blue = "#61afef",
        purple = "#CBA6F7",
        white = "#d1d4cf",
        black = "#1c1c19",
      },
      kind = {},
    },
  },
}
