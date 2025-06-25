local wezterm = require('wezterm')
local act = wezterm.action
local config = {}

-- colors

config.colors = {
    ansi = {
        '#000000',
        '#990000',
        '#00a600',
        '#999900',
        '#4848b8',
        '#b200b2',
        '#00a6b2',
        '#bfbfbf',
    },

    brights = {
        '#676767',
        '#e60000',
        '#00d900',
        '#e6e600',
        '#5757ee',
        '#e600e6',
        '#00e6e6',
        '#e6e6e6',
    },

    background = '#171717',
    foreground = '#ffffff',

    cursor_bg = '#ffffff',
    cursor_fg = '#000000',
    cursor_border = '#ffffff',

    selection_bg = '#bbd6fc',
    selection_fg = '#000000',

    tab_bar = {
        active_tab = {
            bg_color = '#171717',
            fg_color = '#e6e6e6',
            intensity = 'Bold',
        }
    },
}

-- font

config.font = wezterm.font('SFMono Nerd Font', { weight = 'Bold' })
config.font_size = 18

-- size, padding

config.window_padding = {
    left = 5,
    right = 5,
    top = 2,
    bottom = 2,
}

config.use_resize_increments = true

config.initial_cols = 115
config.initial_rows = 35

config.cell_width = 1.05

-- tab bar

config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_max_width = 32

-- option/cmd movement

config.keys = {
    { key = 'LeftArrow',  mods = 'OPT', action = act.SendString('\x1bb') },
    { key = 'RightArrow', mods = 'OPT', action = act.SendString('\x1bf') },
    { key = 'LeftArrow',  mods = 'CMD', action = act.SendString('\x01') },
    { key = 'RightArrow', mods = 'CMD', action = act.SendString('\x05') },
}

-- TODO: startup centered

return config
