local db = require("dashboard")
local home = os.getenv("HOME")

db.preview_command = "cat | lolcat"
db.preview_file_path = "~/Wallpapers/ss.txt"
db.preview_file_height = 26
db.preview_file_width = 26
db.custom_center = {
    {
        icon = "🛑  ",
        desc = "Salir de NeoGOD                         ",
        action = "quit",
        shortcut = "SPC q",
    },
    {
        icon = "🕒  ",
        desc = "Sesion abierta recientemente             ",
        shortcut = "SPC s l",
        action = "SessionLoad",
    },
    {
        icon = "📜  ",
        desc = "Archivos recientemente abiertos         ",
        action = "DashboardFindHistory",
        shortcut = "SPC f h",
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
        shortcut = "SPC f b",
    },
    {
        icon = "🔬  ",
        desc = "Live grep                               ",
        action = "Telescope live_grep",
        shortcut = "SPC f w",
    },
    {
        icon = "🔨  ",
        desc = "Abrir la configuracion personal         ",
        action = "e ~/.config/nvim",
        shortcut = "SPC f d",
    },
}
