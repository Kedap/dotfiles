{
  plugins.dashboard = {
    enable = true;
  };
  plugins.web-devicons.enable = true;

  extraConfigLuaPost = ''
    -- Función de ayuda para repetir strings
    local function repeat_str(str, times)
      return times > 0 and str .. repeat_str(str, times - 1) or ""
    end

    -- Definimos el header estático
    local header = {
      "",
      " -{ Bienvenido sempai }-",
      "",
      "   ⠄⠄⠄⠄ ⠄⠄⠄⠄⠄   ⠄⠄⠄⠄⠄⠄",
      "   ⠄⠄⡔⠙⠢⡀⠄⠄⠄⢀⠼⠅⠈⢂⠄⠄⠄⠄⠄",
      "   ⠄⠄⡌⠄⢰⠉⢙⢗⣲⡖⡋⢐⡺⡄⠈⢆⠄⠄⠄",
      "   ⠄⡜⠄⢀⠆⢠⣿⣿⣿⣿⢡⢣⢿⡱⡀⠈⠆⠄⠄",
      "   ⠄⠧⠤⠂⠄⣼⢧⢻⣿⣿⣞⢸⣮⠳⣕⢤⡆⠄⠄",
      "   ⢺⣿⣿⣶⣦⡇⡌⣰⣍⠚⢿⠄⢩⣧⠉⢷⡇⠄⠄",
      "   ⠘⣿⣿⣯⡙⣧⢎⢨⣶⣶⣶⣶⢸⣼⡻⡎⡇⠄⠄",
      "   ⠄⠘⣿⣿⣷⡀⠎⡮⡙⠶⠟⣫⣶⠛⠧⠁⠄⠄⠄",
      "   ⠄⠄⠘⣿⣿⣿⣦⣤⡀⢿⣿⣿⣿⣄⠄⠄⠄⠄⠄",
      "   ⠄⠄⠄⠈⢿⣿⣿⣿⣿⣷⣯⣿⣿⣷⣾⣿⣷⡄⠄",
      "   ⠄⠄⠄⠄⠄⢻⠏⣼⣿⣿⣿⣿⡿⣿⣿⣏⢾⠇⠄",
      "   ⠄⠄⠄⠄⠄⠈⡼⠿⠿⢿⣿⣦⡝⣿⣿⣿⠷⢀⠄",
      "   ⠄⠄⠄⠄⠄⠄⡇⠄⠄⠄⠈⠻⠇⠿⠋⠄⠄⢘⡆",
      "   ⠄⠄⠄⠄⠄⠄⠱⣀⠄⠄⠄⣀⢼⡀⠄⢀⣀⡜⠄",
      "   ⠄⠄⠄⠄⠄⠄⠄⢸⣉⠉⠉⠄⢀⠈⠉⢏⠁⠄⠄",
      "   ⠄⠄⠄⠄⠄⠄⡰⠃⠄⠄⠄⠄⢸⠄⠄⢸⣧⠄⠄",
      "   ⠄⠄⠄⠄⠄⣼⣧⠄⠄⠄⠄⠄⣼⠄⠄⡘⣿⡆⠄",
      "   ⠄⠄⠄⢀⣼⣿⡙⣷⡄⠄⠄⠄⠃⠄⢠⣿⢸⣿⡀",
      "   ⠄⠄⢀⣾⣿⣿⣷⣝⠿⡀⠄⠄⠄⢀⡞⢍⣼⣿⠇",
      "   ⠄⠄⣼⣿⣿⣿⣿⣿⣷⣄⠄⠄⠠⡊⠴⠋⠹⡜⠄",
      "   ⠄⠄⣿⣿⣿⣿⣿⣿⣿⣿⡆⣤⣾⣿⣿⣧⠹⠄⠄",
      "", "", "", "",
    }

    local status_ok, splash = pcall(vim.fn.system, "shuf -n 1 " .. vim.fn.expand("~") .. "/Wallpapers/splashes")
    if status_ok and splash and splash ~= "" and splash ~= "\n" then
      splash = vim.trim(splash) .. "!"
      local padding = math.floor((#(header[2] or "") - #splash) / 2) - 2
      if padding > 0 then
        splash = repeat_str(" ", padding) .. "-> " .. splash .. " <-"
        table.insert(header, splash)
      end
    end

    local center = {
      { icon = "🛑  ", desc = "Salir de NeoGOD                         ", action = "q", shortcut = "SPC q" },
      { icon = "🔨  ", desc = "Abrir la configuracion personal         ", action = "e ~/.config/nvim", shortcut = "SPC f d" },
      { icon = "📔  ", desc = "Abrir la agenda (neorg)                 ", action = "e ~/org/norg/agenda.norg", shortcut = "SPC m n a" },
      { icon = "🔎  ", desc = "Encontrar archivo                       ", action = "Telescope find_files find_command=rg,--hidden,--files", shortcut = "SPC f f" },
      { icon = "📁  ", desc = "Navegador de archivos                   ", action = "NvimTreeOpen", shortcut = "SPC f n" },
      { icon = "🔬  ", desc = "Live grep                               ", action = "Telescope live_grep", shortcut = "SPC l a" },
      { icon = "🕒  ", desc = "Sesion abierta recientemente             ", action = "SessionLoad", shortcut = "SPC s l" },
    }

    require("dashboard").setup {
      theme = "doom",
      config = {
        header = header,
        center = center,
      },
    }
  '';
}
