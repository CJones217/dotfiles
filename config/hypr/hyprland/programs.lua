---------------------
---- MY PROGRAMS ----
---------------------


-- Set programs that you use
local terminal        = "foot"
local headlessTerminal= "foot --server"
local fileManager     = "dolphin"
local menu            = "rofi -show combi"
local bar             = "waybar"
local lockscreen      = "hyprlock"
local wallpaper       = "hyprpaper"
local notifications   = "dunst"
local browser         = "firefox"
local screenshots     = "screenshot"
local gameLauncher    = "steam"
local torrentManager  = "org.qbittorrent.qBittorrent"
local videoRecording  = "com.obsproject.Studio"
local videoEditing    = "org.kde.kdenlive"
local encryption      = "veracrypt"
local wallpaperScript = "generate_hyprpaper_config.sh"
local imageViewer     = "swayimg"
local videoViewer     = "mpv"

return {
terminal        = terminal,
headlessTerminal= headlessTerminal,
fileManager     = fileManager,
menu            = menu,
bar             = bar,
lockscreen      = lockscreen,
wallpaper       = wallpaper,
notifications   = notifications,
browser         = browser,
screenshots     = screenshots,
gameLauncher    = gameLauncher,
torrentManager  = torrentManager,
videoRecording  = videoRecording,
videoEditing    = videoEditing,
encryption      = encryption,
wallpaperScript = wallpaperScript,
imageViewer     = imageViewer,
videoViewer     = videoViewer
}
