require("hyprland.monitors")
require("hyprland.binds")
local programs = require("hyprland.programs")
require("hyprland.windowrules")




-- Some default env vars.
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")


-- move workspace 1 to first monitor
hl.workspace_rule({
    workspace = "1",
    monitor = "HDMI-A-1",
    default = true
})


hl.on("hyprland.start", function () 
  hl.exec_cmd(programs.wallpaperScript .. " && " .. programs.wallpaper)
  hl.exec_cmd(programs.headlessTerminal)
  hl.exec_cmd(programs.bar .. " & " .. programs.notifications)
  hl.exec_cmd(programs.gameLauncher)
  hl.exec_cmd(programs.browser)
end)

-- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ for more
hl.config({
    dwindle = {
        preserve_split = true, -- You probably want this
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
hl.config({
    master = {
        new_status = "master",
    },
})

hl.config({
    input = {
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,

        numlock_by_default = true,

        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

        touchpad = {
            natural_scroll = false,
        },
    },
})

hl.config({
    misc = {
        enable_swallow = true,
        disable_hyprland_logo   = true,
    },
})

hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 15,

        border_size = 1,

        col = {
            active_border   = { colors = {"rgba(33ccffee)", "rgba(00ff99ee)"}, angle = 45 },
            inactive_border = "rgba(595959aa)",
        },

        -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = false,

        -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding       = 3,
        -- rounding_power = 2,

        -- Change transparency of focused and unfocused windows
        -- active_opacity   = 1.0,
        -- inactive_opacity = 1.0,

        -- shadow = {
        --     enabled      = true,
        --     range        = 4,
        --     render_power = 3,
        --     color        = 0xee1a1a1a,
        -- },

        blur = {
            enabled   = true,
            size      = 3,
            passes    = 1,
            vibrancy  = 0.1696,
            new_optimizations = true
        },
    },

    animations = {
        enabled = true,
    },
})

hl.curve("easeOutQuint", { type = "bezier", points = { {0.23, 1}, {0.32, 1}  } })
hl.curve("linear", { type = "bezier", points = { {0, 0}, {1, 1}  } })
hl.curve("quick", { type = "bezier", points = { {0.15, 0}, {0.1, 1}  } })
hl.curve("almostLinear", { type = "bezier", points = { {0.5, 0.5}, {0.75, 1}  } })

hl.curve("easy", { type = "spring", mass = 1, stiffness = 71.2633, dampening = 15.8273644 })


hl.animation({ leaf = "windows",       enabled = true,  speed = 4.79, spring = "easy" })
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 1.49, bezier = "linear",       style = "popin 80%" })
hl.animation({ leaf = "border",        enabled = true,  speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 1.21, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 1.94, bezier = "almostLinear", style = "fade" })
