-- Pull in the wezterm API
local wezterm = require 'wezterm'
local mux = wezterm.mux

wezterm.on("gui-startup", function(cmd)
    local tab, pane, window = mux.spawn_window(cmd or {})
    window:gui_window():maximize()
end)

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
    config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Gruvbox Material (Gogh)'
config.font_size = 12.0
config.default_prog = { "nu" }
config.window_decorations = "NONE"
config.hide_tab_bar_if_only_one_tab = true

-- and finally, return the configuration to wezterm
return config
