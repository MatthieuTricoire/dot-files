local wezterm = require("wezterm")

-- if you are *NOT* lazy-loading smart-splits.nvim (recommended)
local function is_vim(pane)
	-- this is set by the plugin, and unset on ExitPre in Neovim
	return pane:get_user_vars().IS_NVIM == "true"
end

local direction_keys = {
	Left = "h",
	Down = "j",
	Up = "k",
	Right = "l",
	-- reverse lookup
	h = "Left",
	j = "Down",
	k = "Up",
	l = "Right",
}

local function split_nav(resize_or_move, key)
	return {
		key = key,
		mods = resize_or_move == "resize" and "META" or "CTRL",
		action = wezterm.action_callback(function(win, pane)
			if is_vim(pane) then
				-- pass the keys through to vim/nvim
				win:perform_action({
					SendKey = { key = key, mods = resize_or_move == "resize" and "META" or "CTRL" },
				}, pane)
			else
				if resize_or_move == "resize" then
					win:perform_action({ AdjustPaneSize = { direction_keys[key], 3 } }, pane)
				else
					win:perform_action({ ActivatePaneDirection = direction_keys[key] }, pane)
				end
			end
		end),
	}
end

return {

	-- window padding
	window_padding = {
		left = 10,
		right = 10,
		top = 10,
		bottom = 10,
	},
	-- deactivate bell sound
	audible_bell = "Disabled",

	-- define leader key
	leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 },
	keys = {
		-- full screen
		{
			key = "f",
			mods = "LEADER",
			action = wezterm.action.ToggleFullScreen,
		},
		-- horizontal split
		{
			key = "|",
			mods = "LEADER",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		-- vertical split
		{
			key = "-",
			mods = "LEADER",
			action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		-- move between split panes
		split_nav("move", "h"),
		split_nav("move", "j"),
		split_nav("move", "k"),
		split_nav("move", "l"),
		-- resize panes
		split_nav("resize", "h"),
		split_nav("resize", "j"),
		split_nav("resize", "k"),
		split_nav("resize", "l"),
	},

	-- color_scheme = 'termnial.sexy',
	-- color_scheme = "Catppuccin Mocha",
	color_scheme = "rose-pine-moon",
	enable_tab_bar = true,

	native_macos_fullscreen_mode = true,

	font = wezterm.font("JetBrainsMono Nerd Font", { weight = 400 }),
	line_height = 1,

	-- font = wezterm.font("MonaspiceXe Nerd Font", { weight = 400 }),
	-- line_height = 1.2,

	font_size = 18.0,
	-- macos_window_background_blur = 40,
	macos_window_background_blur = 30,

	window_background_image = "/Users/matthieutricoire/Documents/Images/Wallpapers/evening-pixel-art.jpeg",
	window_background_image_hsb = {
		brightness = 0.3,
		hue = 1.0,
		saturation = 0.8,
	},
	-- window_background_opacity = 0.92,
	-- window_background_opacity = 0.8,
	-- window_background_opacity = 0.78,
	-- window_background_opacity = 0.20,
	window_decorations = "RESIZE",
	mouse_bindings = {
		-- Ctrl-click will open the link under the mouse cursor
		{
			event = { Up = { streak = 1, button = "Left" } },
			mods = "CTRL",
			action = wezterm.action.OpenLinkAtMouseCursor,
		},
	},
}
