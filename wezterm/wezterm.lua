local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.colors = {
    background = '#111',
    foreground = '#fff',
    cursor_bg = '#fff'
}

config.font = wezterm.font_with_fallback {
    -- 'Berkeley Mono',
    'Iosevka Nerd Font',
    'nonicons',
}

config.font_size = 12.4

config.term = "xterm-256color"

config.enable_scroll_bar = false
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

config.window_background_opacity = 0.81

config.leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 500 }

config.keys = {
    {
        key = "a",
        mods = "LEADER | SHIFT",
        action = wezterm.action_callback(function(win, pane)
            local tab, window = pane:move_to_new_tab()
        end)
    }
}

config.use_fancy_tab_bar = false

config.tab_bar_at_bottom = true

-- config.freetype_load_flags = 'NO_HINTING'
config.freetype_render_target = "HorizontalLcd"

return config
