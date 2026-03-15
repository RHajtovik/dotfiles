local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.front_end = "WebGpu"
config.max_fps = 144
config.scrollback_lines = 10000
config.audible_bell = "Disabled"
config.adjust_window_size_when_changing_font_size = false

config.window_close_confirmation = "NeverPrompt"

-- Launch
config.initial_cols = 200
config.initial_rows = 48
config.default_prog = { "wsl.exe", "~" }

-- Window
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_background_opacity = 0.90
config.window_padding = {
	left = 12,
	right = 12,
	top = 20,
	bottom = 20,
}
-- Cursor
config.default_cursor_style = "BlinkingUnderline" -- BlinkingBlock | BlinkingBar | BlinkingUnderline
config.cursor_blink_rate = 600 -- milliseconds (lower = faster blink)
config.animation_fps = 60 --config.scrollback_lines = 10000 smoother animations
config.cursor_thickness = 2 -- only applies to bar/underline

-- Font
config.font_size = 10.5
config.font = wezterm.font("CaskaydiaCove Nerd Font")

-- Tabs
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false
config.use_fancy_tab_bar = false
config.tab_max_width = 32
config.tab_bar_at_bottom = false

-- Colors
config.colors = {
	tab_bar = {
		background = "#1d2021",

		active_tab = {
			bg_color = "#504945",
			fg_color = "#ebdbb2",
			intensity = "Bold",
		},

		inactive_tab = {
			bg_color = "#282828",
			fg_color = "#a89984",
		},

		inactive_tab_hover = {
			bg_color = "#3c3836",
			fg_color = "#ddc7a1",
		},

		new_tab = {
			bg_color = "#1d2021",
			fg_color = "#bdae93",
		},

		new_tab_hover = {
			bg_color = "#3c3836",
			fg_color = "#ebdbb2",
		},
	},
}

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	local colors = config.colors.tab_bar

	local bg = colors.inactive_tab.bg_color
	local fg = colors.inactive_tab.fg_color

	if tab.is_active then
		bg = colors.active_tab.bg_color
		fg = colors.active_tab.fg_color
	elseif hover then
		bg = colors.inactive_tab_hover.bg_color
		fg = colors.inactive_tab_hover.fg_color
	end

	local title = tab.active_pane.title

	return {
		{ Background = { Color = bg } },
		{ Foreground = { Color = fg } },
		{ Text = "  " .. wezterm.truncate_right(title, max_width - 2) .. "  " },
	}
end)

config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }

config.keys = {
	{
		key = "c",
		mods = "LEADER",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	{
		key = "x",
		mods = "LEADER",
		action = wezterm.action.CloseCurrentTab({ confirm = false }),
	},
	{
		key = "h",
		mods = "LEADER",
		action = wezterm.action.ActivateTabRelative(-1),
	},
	{
		key = "l",
		mods = "LEADER",
		action = wezterm.action.ActivateTabRelative(1),
	},
}

for i = 1, 9 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "LEADER",
		action = wezterm.action.ActivateTab(i - 1),
	})
end

config.color_scheme = "Gruvbox Material (Gogh)"

return config
