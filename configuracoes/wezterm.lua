local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- ========= RENDER =========

config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"

config.enable_wayland = false

config.max_fps = 165
config.animation_fps = 165

-- ========= WINDOW =========

config.initial_cols = 140
config.initial_rows = 34

config.window_decorations = "RESIZE"
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

config.window_background_opacity = 0.94
config.text_background_opacity = 1.0

config.window_padding = {
    left = 10,
    right = 10,
    top = 8,
    bottom = 6,
}

-- ========= FONT =========

config.font = wezterm.font_with_fallback({
    {
        family = "JetBrainsMono Nerd Font",
        weight = "Medium",
    },
    "Noto Color Emoji",
})

config.font_size = 12.5
config.line_height = 1.0

config.harfbuzz_features = {
    "calt=0",
    "clig=0",
    "liga=0",
}

-- ========= COLORS =========

config.colors = {
    foreground = "#cdd6f4",
    background = "#0b0f14",

    cursor_bg = "#00ff9c",
    cursor_fg = "#0b0f14",

    selection_bg = "#1f2a38",
    selection_fg = "#ffffff",

    ansi = {
        "#1e1e2e",
        "#f38ba8",
        "#a6e3a1",
        "#f9e2af",
        "#89b4fa",
        "#cba6f7",
        "#94e2d5",
        "#bac2de",
    },

    brights = {
        "#45475a",
        "#f38ba8",
        "#a6e3a1",
        "#f9e2af",
        "#89b4fa",
        "#cba6f7",
        "#94e2d5",
        "#a6adc8",
    },
}

-- ========= CURSOR =========

config.default_cursor_style = "BlinkingBlock"
config.cursor_blink_rate = 500

-- ========= SCROLL =========

config.enable_scroll_bar = false
config.scrollback_lines = 10000

-- ========= SHELL =========

config.default_prog = { "/bin/bash", "-l" }

-- zsh:
-- config.default_prog = { "/bin/zsh", "-l" }

-- fish:
-- config.default_prog = { "/usr/bin/fish", "-l" }

-- ========= KEYBINDS =========

config.keys = {
    {
        key = "Enter",
        mods = "ALT",
        action = wezterm.action.ToggleFullScreen,
    },

    {
        key = "d",
        mods = "CTRL|SHIFT",
        action = wezterm.action.SplitHorizontal({
            domain = "CurrentPaneDomain",
        }),
    },

    {
        key = "e",
        mods = "CTRL|SHIFT",
        action = wezterm.action.SplitVertical({
            domain = "CurrentPaneDomain",
        }),
    },

    {
        key = "w",
        mods = "CTRL|SHIFT",
        action = wezterm.action.CloseCurrentPane({
            confirm = false,
        }),
    },

    {
        key = "t",
        mods = "CTRL|SHIFT",
        action = wezterm.action.SpawnTab("CurrentPaneDomain"),
    },
}

-- ========= PERFORMANCE =========

config.check_for_updates = false

config.adjust_window_size_when_changing_font_size = false

return config
