-- interesting dotfiles
--https://github.com/letieu/dotfiles/blob/master/dot_config/wezterm/key.lua

-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action

-- This table will hold the configuration.
local config = {}
config = wezterm.config_builder()
-- if wezterm.config_builder then
-- end

-- config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true

-- Theme
config.color_scheme = "Tokyo Night (Gogh)"
config.color_scheme = "deep"
config.color_scheme = "Solarized Darcula (Gogh)"
config.color_scheme = "Dracula"
config.color_scheme = "Mellow Purple (base16)"
-- blue/purple color_scheme for matching EndeavourOS
--
-- work good with endeavouros
config.color_scheme = "Grape (Gogh)"
config.color_scheme = "Grayscale (light) (terminal.sexy)"
config.color_scheme = "Aardvark Blue"
config.color_scheme = "Atelier Sulphurpool (base16)"
config.color_scheme = "Belafonte Night (Gogh)"
config.color_scheme = "ForestBlue" -- better look
config.color_scheme = "Outrun Dark (base16)" -- similar but too deep
config.color_scheme = "Morada (Gogh)" -- similar but brighters
config.color_scheme = "Lavandula (Gogh)" -- deep purple
config.color_scheme = "Cyberdyne" -- most similar to orignal color_scheme but too brights
config.color_scheme = "Bim (Gogh)"
config.color_scheme = "Adventure Time (Gogh)"
config.color_scheme = "Solarized (dark) (terminal.sexy)"
config.color_scheme = "GruvboxDarkHard"
config.color_scheme = "GruvboxDark"
config.color_scheme = "Tokyo Night Storm (Gogh)"
config.color_scheme = "Outrun Dark (base16)" -- similar but too deep
config.color_scheme = "Overnight Slumber"

config.color_scheme = "Banana Blueberry"
config.color_scheme = "Solarized Dark - Patched"
config.color_scheme = "Gruvbox Dark (Gogh)"
config.color_scheme = "Google (dark) (terminal.sexy)"

config.color_scheme = "iTerm2 Default"
config.color_scheme = "Dark+"
config.color_scheme = "Dracula+"
config.color_scheme = "Rosé Pine (Gogh)" -- darker
config.color_scheme = "Rosé Pine Moon (Gogh)"
config.color_scheme = "Gruvbox Material (Gogh)"
config.color_scheme = "Tokyo Night"
config.color_scheme = "Dracula (Official)"
config.color_scheme = "shades-of-purple" -- shade of purple

config.window_background_opacity = 0.94
-- options available: Acrylic, Mica, Tabbed
-- config.win32_system_backdrop = "Acrylic"
-- config.win32_acrylic_accent_color = "#2b2042"

-- config.front_end = "WebGpu"

-- wezterm.on("gui-startup", function(cmd)
-- 	-- window:gui_window():maximize()
-- 	local tab, pane, window = wezterm.spawn_window(cmd or "WSL:Debian")
-- 	window:gui_window():maximize()
-- end)

-- for win32
-- config.default_domain = "WSL:Debian"

-- bell options
config.audible_bell = "Disabled"
config.visual_bell = {
	fade_in_function = "EaseIn",
	fade_in_duration_ms = 150,
	fade_out_function = "EaseOut",
	fade_out_duration_ms = 150,
}
config.colors = {
	visual_bell = "#202020",
}

-- cursor
config.default_cursor_style = "BlinkingBlock"
config.animation_fps = 144
config.cursor_blink_rate = 500
-- config.cursor_blink_ease_in = "Constant"
-- config.cursor_blink_ease_out = "Constant"

-- font
config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Bold" })
config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = "DemiBold" })
config.font = wezterm.font("Terminess Nerd Font Mono", { weight = "Regular" })
config.font = wezterm.font("JetBrainsMonoNL NFM", { weight = "Regular" })
config.font = wezterm.font("FiraCode Nerd Font")
config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Thin" })
config.font = wezterm.font_with_fallback({
	{
		family = "JetBrainsMono Nerd Font",
	},
	{
		family = "NotoSansM Nerd Font",
	},
	{
		family = "Terminess Nerd Font",
	},
	{
		family = "MiSans Khmer",
	},
})
config.font = wezterm.font("Iosevka Nerd Font")
config.font = wezterm.font("JetBrainsMono Nerd Font")
-- =>

-- Terminess recommend size
-- 12 px or 9 pt
-- 14 px or 10.5 pt
-- 16 px or 12 pt
-- 18 px or 13.5 pt
-- 20 px or 15 pt
-- 22 px or 16.5 pt
-- 24 px or 18 pt
-- 28 px or 21 pt
-- 32 px or 24 pt- pt = 18 / 100.45 * 72 = 12.9019412643106
-- config.cell_width = 1.0
config.line_height = 1.0
config.font_size = 16.5
-- config.font_size = 15.5

-- window
config.window_frame = {
	inactive_titlebar_bg = "#353535",
	active_titlebar_bg = "#2b2042",
	inactive_titlebar_fg = "#cccccc",
	active_titlebar_fg = "#ffffff",
	inactive_titlebar_border_bottom = "#2b2042",
	active_titlebar_border_bottom = "#2b2042",
	button_fg = "#cccccc",
	button_bg = "#2b2042",
	button_hover_fg = "#ffffff",
	button_hover_bg = "#3b3052",
	font = wezterm.font("Terminess Nerd Font"),
	font_size = 12.0,
}
-- config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_decorations = "RESIZE"
config.integrated_title_button_style = "Gnome"
config.initial_rows = 40
config.initial_cols = 160

-- config.window_padding = {
-- 	left = "0%",
-- 	right = "0%",
-- 	top = "0%",
-- 	bottom = "0%",
-- }
-- config.text_background_opacity = 0.9

wezterm.on("ready", function(window)
	window:set_position(10, 20)
	window:gui_window():maximize()
end)

-- scrollbar & tab bar
-- config.enable_scroll_bar = true
-- config.use_fancy_tab_bar = true
-- config.tab_bar_at_bottom = true
config.integrated_title_button_color = "red"

-- config.term = "wezterm"

-- config.colors = {
-- 	foreground = "#ffffff",
-- 	background = "#16181a",
--
-- 	cursor_bg = "#ffffff",
-- 	cursor_fg = "#000000",
-- 	cursor_border = "#ffffff",
--
-- 	selection_fg = "#ffffff",
-- 	selection_bg = "#3c4048",
--
-- 	scrollbar_thumb = "#16181a",
-- 	split = "#16181a",
--
-- 	ansi = { "#16181a", "#ff6e5e", "#5eff6c", "#f1ff5e", "#5ea1ff", "#bd5eff", "#5ef1ff", "#ffffff" },
-- 	brights = { "#3c4048", "#ff6e5e", "#5eff6c", "#f1ff5e", "#5ea1ff", "#bd5eff", "#5ef1ff", "#ffffff" },
-- 	indexed = { [16] = "#ffbd5e", [17] = "#ff6e5e" },
--
-- 	tab_bar = {
-- 		background = "rgb(22, 24, 26 / 20%)",
-- 	},
-- }

-- config.window_background_gradient = {
-- 	orientation = "Vertical",
-- 	colors = {
-- 		"#4568dc",
-- 		"#b06ab3",
-- 	},
-- 	interpolation = "Linear",
-- 	blend = "Oklab",
-- 	noise = 12,
-- }

-- config.window_background_gradient = {
-- 	-- colors = { "BuGn" },
-- 	preset = "GnBu",
-- }
function tab_title(tab_info)
	local title = tab_info.tab_title
	-- if the tab title is explicitly set, take that
	if title and #title > 0 then
		return title
	end
	-- Otherwise, use the title from the active pane
	-- in that tab
	return tab_info.active_pane.title
end

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	local title = tab_title(tab)
	if tab.is_active then
		return {
			{ Background = { Color = "#4568dc" } },
			{ Text = "💻" .. title .. " " },
		}
	elseif hover then
		return {
			{ Background = { Color = "#2b2042" } },
			{ Text = "💀" .. title .. " " },
		}
	end
	return title
end)

-- Mouse binding
config.mouse_bindings = {
	-- window dragging
	{
		event = { Down = { streak = 1, button = "Left" } },
		mods = "ALT",
		action = "StartWindowDrag",
		mouse_reporting = true,
	},
	-- ALT streak 2 maximize
	{
		event = { Down = { streak = 2, button = "Left" } },
		mods = "ALT",
		action = "ToggleFullScreen",
		mouse_reporting = true,
	},
}
-- config.bypass_mouse_reporting_modifiers = "CTRL"

-- Custom command palette
wezterm.on("augment-command-palette", function(window, pane)
	return {
		{
			brief = "Rename tab",
			icon = "md_rename_box",

			action = act.PromptInputLine({
				description = "Enter new name for tab",
				action = wezterm.action_callback(function(window, pane, line)
					if line then
						window:active_tab():set_title(line)
					end
				end),
			}),
		},
		-- toggle tab bar
		{
			brief = "Toggle tab bar",
			icon = "md_tab",
			action = wezterm.action_callback(function(window, pane, line)
				-- get current config
				local config = window:get_config()
				-- toggle tab bar
				-- config.enable_tab_bar = false
				-- apply new config
				window:set_config(config)
				wezterm.reload_configuration()
			end),
		},
		{
			brief = "Maximi",
			icon = "md_rename_box",

			action = wezterm.action_callback(function(window, pane, line)
				window:maximize()
			end),
		},
	}
end)

-- cllose benhavior
config.window_close_confirmation = "NeverPrompt"

-- enable wayland
-- config.enable_wayland = false

-- config.default_prog = { "zellij", "-l", "welcome" }

return config
