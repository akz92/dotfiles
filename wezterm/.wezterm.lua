local wezterm = require("wezterm")
local mux = wezterm.mux

wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

return {
	-- Force Wayland backend
	enable_wayland = true,
	-- TERM setting
	term = "xterm-256color",

	-- Font settings
	font = wezterm.font("JetBrains Mono Nerd Font"),
	font_size = 12.0,
	harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },

	-- Padding (Kitty uses pixels, WezTerm uses cells)
	window_padding = {
		left = 5,
		right = 5,
		top = 5,
		bottom = 5,
	},

	-- Key mappings
	keys = {
		-- { key = "q", mods = "CMD", action = wezterm.action.QuitApplication },
		{ key = "v", mods = "CTRL", action = wezterm.action.PasteFrom("Clipboard") },
		-- { key = "c", mods = "CTRL", action = wezterm.action.CopyTo("Clipboard") },
		-- { key = "=", mods = "CTRL|SHIFT", action = wezterm.action.IncreaseFontSize },
		--
		-- { key = "-", mods = "CTRL|SHIFT", action = wezterm.action.DecreaseFontSize },
		-- { key = "Backspace", mods = "CTRL|SHIFT", action = wezterm.action.ResetFontSize },
	},

	-- Cursor style
	-- default_cursor_style = "BlinkingUnderline",

	-- URL launcher
	mouse_bindings = {
		{
			event = { Up = { streak = 1, button = "Left" } },
			mods = "SUPER",
			action = "OpenLinkAtMouseCursor",
		},
	},
	hyperlink_rules = wezterm.default_hyperlink_rules(),
	launch_menu = {},
	default_prog = { "/bin/zsh", "--login" },

	-- Colors (based on your final section)
	colors = {
		foreground = "#a9b1d6",
		background = "#1a1b26",

		cursor_bg = "#c0caf5",
		cursor_fg = "#1a1b26",
		cursor_border = "#c0caf5",

		selection_fg = "None",
		selection_bg = "#28344a",

		ansi = {
			"#414868",
			"#f7768e",
			"#73daca",
			"#e0af68",
			"#7aa2f7",
			"#bb9af7",
			"#7dcfff",
			"#c0caf5",
		},
		brights = {
			"#414868",
			"#f7768e",
			"#73daca",
			"#e0af68",
			"#7aa2f7",
			"#bb9af7",
			"#7dcfff",
			"#c0caf5",
		},

		-- URL highlight color (not natively supported the same way, but you can tint hyperlinks)
		-- This color will apply as an underline for hyperlinks:
		-- underline_color = "#9ece6a",
	},

	-- Decorations
	window_decorations = "NONE",
	enable_tab_bar = false,

	-- Use system wcwidth: not configurable in WezTerm; it's handled internally.
}
