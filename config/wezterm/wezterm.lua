local wezterm = require 'wezterm'
local mux = wezterm.mux
local action = wezterm.action
local config = {}

-- in newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- customize tab bar
config.window_frame = {
  font = wezterm.font { family = 'JetBrainsMono NF', weight = 'Bold' },
}

config.front_end = 'WebGpu'

-- appearance settings
config.animation_fps = 30
config.color_scheme = 'Catppuccin Mocha'
config.cursor_blink_rate = 1000
config.default_cursor_style = 'BlinkingBar'
config.font = wezterm.font 'JetBrainsMono NF'
config.hide_tab_bar_if_only_one_tab = true

-- keybindings


-- misc
config.audible_bell = 'Disabled'
config.scrollback_lines = 2500
config.use_dead_keys = false
config.window_close_confirmation = 'NeverPrompt'

return config
