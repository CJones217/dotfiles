---------------------
---- KEYBINDINGS ----
---------------------

local programs = require("hyprland.programs")

local mainMod = "SUPER" -- Sets "Windows" key as main modifier
local secondMod = "ALT"

--general binds for system actions
hl.bind(mainMod .. " + SHIFT + C", hl.dsp.window.close()) -- close current focused window
hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")) -- I think this shutsdown hyprland?
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.exec_cmd(programs.lockscreen)) --runs lockscreen

-- binds to open programs
hl.bind(mainMod .. " + SHIFT + RETURN", hl.dsp.exec_cmd(programs.terminal)) --open terminal
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.exec_cmd(programs.fileManager)) --open file manager
hl.bind(mainMod .. " + P", hl.dsp.exec_cmd(programs.menu)) -- open menu
hl.bind(mainMod .. " + SHIFT + B", hl.dsp.exec_cmd(programs.browser)) -- open browser
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd(programs.screenshots)) --take a screenshot

-- general binds to alter windows
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" })) -- make window floating
hl.bind(mainMod .. " + U", hl.dsp.window.pseudo()) --makes the window psuedotile to look nicer
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit")) --toggle how it is split (vertical vs horizontal). dwindle only

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- volume (speaker,headphones) controls
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })

-- volume (microphone) controls
hl.bind(secondMod .. " + " .. mainMod .. " + M",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })

-- play pause whatever (uses playerctl)
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
