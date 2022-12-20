--      ██╗    ██╗ █████╗ ██╗     ██╗     ██████╗  █████╗ ██████╗ ███████╗██████╗
--      ██║    ██║██╔══██╗██║     ██║     ██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔══██╗
--      ██║ █╗ ██║███████║██║     ██║     ██████╔╝███████║██████╔╝█████╗  ██████╔╝
--      ██║███╗██║██╔══██║██║     ██║     ██╔═══╝ ██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗
--      ╚███╔███╔╝██║  ██║███████╗███████╗██║     ██║  ██║██║     ███████╗██║  ██║
--       ╚══╝╚══╝ ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝     ╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝

-- ===================================================================
-- Imports
-- ===================================================================


local awful = require("awful")
local gears = require("gears")
local naughty = require("naughty")


-- ===================================================================
-- Initialization
-- ===================================================================


local is_blurred = false;

local function obtenerWall()
	local f_diurnos = { "city", "girl", "yosemite-lowpoly" }
	local f_noct = { "fondo", "fondo0" }
	local dir_wall = "~/Wallpapers/"

	if tonumber(os.date "%H") >= 17 or tonumber(os.date "%H") <= 7 then
		local r = math.random(0, 1)
	  return dir_wall .. f_noct[r] .. ".jpg"
	else
		local r = math.random(0, 3)
	  return dir_wall .. f_diurnos[math.random(0, 3)].. ".jpg"
	end
end
--local wallpaper = wallpaper_dir .. "/fondo.jpg"
--local blurred_wallpaper = wallpaper_dir .. "/fondo.jpg"
local resultado = obtenerWall()
local wallpaper = resultado
local blurred_wallpaper = resultado

awful.spawn.with_shell("feh --bg-fill " .. wallpaper)

--- Check if a file or directory exists in this path
local function exists(file)
   local ok, err, code = os.rename(file, file)
   if not ok then
      if code == 13 then
         -- Permission denied, but it exists
         return true
      end
   end
   return ok, err
end

-- check if blurred wallpaper needs to be created
--if not exists(blurred_wallpaper) then
--   naughty.notify({
--      preset = naughty.config.presets.normal,
--      title = "Wallpaper",
--      text = "Generating blurred wallpaper..."
--   })
--   -- uses image magick to create a blurred version of the wallpaper
--   awful.spawn.with_shell("convert -filter Gaussian -blur 0x30 " .. wallpaper .. " " .. blurred_wallpaper)
--end


-- ===================================================================
-- Functionality
-- ===================================================================


-- changes to blurred wallpaper
--local function blur()
--   if not is_blurred then
--      awful.spawn.with_shell("feh --bg-fill " .. blurred_wallpaper)
--      is_blurred = true
--   end
--end

-- changes to normal wallpaper
local function unblur()
   if is_blurred then
      awful.spawn.with_shell("feh --bg-fill " .. wallpaper)
      is_blurred = false
   end
end
