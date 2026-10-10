----------------------
---- WINDOW RULES ----
----------------------

local programs = require("hyprland.programs")

-- hl.window_rule({
--     name = "first-browser-to-workspace-2",
--     match = {
--         class = programs.browser
--     },
--     workspace = 2
-- })

hl.window_rule({
    name = "game-luancher-to-workspace-8",
    match = {
        class = programs.gameLauncher
    },
    workspace = "8 silent"
})

hl.window_rule({
    name = "torrent-to-workspace-9",
    match = {
        class = programs.torrentManager
    },
    workspace = "9 silent"
})

hl.window_rule({
    name = "recording-to-workspace-5",
    match = {
        class = programs.videoRecording
    },
    workspace = 5
})

hl.window_rule({
    name = "editing-to-workspace-5",
    match = {
        class = programs.videoEditing
    },
    workspace = 5
})

hl.window_rule({
    name = "encryption-to-workspace-10",
    match = {
        class = programs.encryption
    },
    float = true,
    pseudo = true,
    workspace = 10
})

hl.window_rule({
    name = "open-image",
    match = {
        class = programs.imageViewer
    },
    float = true,
    pseudo = true
})

hl.window_rule({
    name = "open-video",
    match = {
        class = programs.videoViewer
    },
    float = true,
    pseudo = true
})