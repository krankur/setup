-- Pull in the wezterm API
local wezterm = require 'wezterm'
local mux = wezterm.mux

-- Auto maximize window on startup
wezterm.on("gui-startup", function(cmd)
    local tab, pane, window = mux.spawn_window(cmd or {})
    window:gui_window():maximize()
end)

-- Table that holds the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
    config = wezterm.config_builder()
end

-- Config
config.color_scheme = "Gruvbox Material (Gogh)"
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true

-- Windows specific config
if wezterm.target_triple == "x86_64-pc-windows-msvc" then
    config.default_cwd = wezterm.home_dir .. "/OneDrive/workspace"
    config.font_size = 12.0
    config.default_prog = { "nu" }
end

-- MacOS specific config
if wezterm.target_triple == "x86_64-apple-darwin" or
    wezterm.target_triple == "target_triple" then
    config.font_size = 14.0
end

-- Linux specific config
if wezterm.target_triple == "x86_64-unknown-linux-gnu" then
end

-- Return the configuration to wezterm
return config

