return {
  "glepnir/dashboard-nvim",
  event = "VimEnter",
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
  config = function()
    local function repeat_str(str, times)
      return times > 0 and str .. repeat_str(str, times - 1) or ""
    end
    local header = {
      [[]],
      [[ -{ Bienvenido sempai }-]],
      [[]],
      [[   ⠄⠄⠄⠄ ⠄⠄⠄⠄⠄   ⠄⠄⠄⠄⠄⠄]],
      [[   ⠄⠄⡔⠙⠢⡀⠄⠄⠄⢀⠼⠅⠈⢂⠄⠄⠄⠄⠄]],
      [[   ⠄⠄⡌⠄⢰⠉⢙⢗⣲⡖⡋⢐⡺⡄⠈⢆⠄⠄⠄]],
      [[   ⠄⡜⠄⢀⠆⢠⣿⣿⣿⣿⢡⢣⢿⡱⡀⠈⠆⠄⠄]],
      [[   ⠄⠧⠤⠂⠄⣼⢧⢻⣿⣿⣞⢸⣮⠳⣕⢤⡆⠄⠄]],
      [[   ⢺⣿⣿⣶⣦⡇⡌⣰⣍⠚⢿⠄⢩⣧⠉⢷⡇⠄⠄]],
      [[   ⠘⣿⣿⣯⡙⣧⢎⢨⣶⣶⣶⣶⢸⣼⡻⡎⡇⠄⠄]],
      [[   ⠄⠘⣿⣿⣷⡀⠎⡮⡙⠶⠟⣫⣶⠛⠧⠁⠄⠄⠄]],
      [[   ⠄⠄⠘⣿⣿⣿⣦⣤⡀⢿⣿⣿⣿⣄⠄⠄⠄⠄⠄]],
      [[   ⠄⠄⠄⠈⢿⣿⣿⣿⣿⣷⣯⣿⣿⣷⣾⣿⣷⡄⠄]],
      [[   ⠄⠄⠄⠄⠄⢻⠏⣼⣿⣿⣿⣿⡿⣿⣿⣏⢾⠇⠄]],
      [[   ⠄⠄⠄⠄⠄⠈⡼⠿⠿⢿⣿⣦⡝⣿⣿⣿⠷⢀⠄]],
      [[   ⠄⠄⠄⠄⠄⠄⡇⠄⠄⠄⠈⠻⠇⠿⠋⠄⠄⢘⡆]],
      [[   ⠄⠄⠄⠄⠄⠄⠱⣀⠄⠄⠄⣀⢼⡀⠄⢀⣀⡜⠄]],
      [[   ⠄⠄⠄⠄⠄⠄⠄⢸⣉⠉⠉⠄⢀⠈⠉⢏⠁⠄⠄]],
      [[   ⠄⠄⠄⠄⠄⠄⡰⠃⠄⠄⠄⠄⢸⠄⠄⢸⣧⠄⠄]],
      [[   ⠄⠄⠄⠄⠄⣼⣧⠄⠄⠄⠄⠄⣼⠄⠄⡘⣿⡆⠄]],
      [[   ⠄⠄⠄⢀⣼⣿⡙⣷⡄⠄⠄⠄⠃⠄⢠⣿⢸⣿⡀]],
      [[   ⠄⠄⢀⣾⣿⣿⣷⣝⠿⡀⠄⠄⠄⢀⡞⢍⣼⣿⠇]],
      [[   ⠄⠄⣼⣿⣿⣿⣿⣿⣷⣄⠄⠄⠠⡊⠴⠋⠹⡜⠄]],
      [[   ⠄⠄⣿⣿⣿⣿⣿⣿⣿⣿⡆⣤⣾⣿⣿⣧⠹⠄⠄]],
      [[]],
      [[]],
      [[]],
      [[]],
    }

    local splash = vim.fn.system("shuf -n 1 " .. "~/Wallpapers/splashes"):sub(1, -2) .. "!"
    local padding = (#header[#header] - #splash) / 2 - 2
    splash = repeat_str(" ", padding) .. "-> " .. splash .. " <-"
    table.insert(header, splash)

    local center = {
      {
        icon = "🛑  ",
        desc = "Salir de NeoGOD                         ",
        action = "quit",
        shortcut = "SPC q",
      },
      {
        icon = "🔨  ",
        desc = "Abrir la configuracion personal         ",
        action = "e ~/.config/nvim",
        shortcut = "SPC f d",
      },
      {
        icon = "📔  ",
        desc = "Abrir la agenda (neorg)                 ",
        action = "e ~/org/norg/agenda.norg",
        shortcut = "SPC m n a",
      },
      {
        icon = "🔎  ",
        desc = "Encontrar archivo                       ",
        action = "Telescope find_files find_command=rg,--hidden,--files",
        shortcut = "SPC f f",
      },
      {
        icon = "📁  ",
        desc = "Navegador de archivos                   ",
        action = "NvimTreeOpen",
        shortcut = "SPC f n",
      },
      {
        icon = "🔬  ",
        desc = "Live grep                               ",
        action = "Telescope live_grep",
        shortcut = "SPC l a",
      },
      {
        icon = "🕒  ",
        desc = "Sesion abierta recientemente             ",
        shortcut = "SPC s l",
        action = "SessionLoad",
      },
    }

    require("dashboard").setup {
      theme = "doom",
      config = {
        header = header,
        center = center,
      },
    }
  end,
}
