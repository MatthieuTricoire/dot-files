local wezterm = require("wezterm")

local direction_keys = {
	left = "h",
	down = "j",
	up = "k",
	right = "l",
	-- reverse lookup
	h = "left",
	j = "down",
	k = "up",
	l = "right",
}

return {
	-- color_scheme = "catppuccin",
	-- disable bell
}
--
-- -- if you are *not* lazy-loading smart-splits.nvim (recommended)
-- local function is_vim(pane)
-- 	-- this is set by the plugin, and unset on exitpre in neovim
-- 	return pane:get_user_vars().is_nvim == "true"
-- end
--
-- local direction_keys = {
-- 	left = "h",
-- 	down = "j",
-- 	up = "k",
-- 	right = "l",
-- 	-- reverse lookup
-- 	h = "left",
-- 	j = "down",
-- 	k = "up",
-- 	l = "right",
-- }
--
-- local function split_nav(resize_or_move, key)
-- 	return {
-- 		key = key,
-- 		mods = resize_or_move == "resize" and "meta" or "ctrl",
-- 		action = wezterm.action_callback(function(win, pane)
-- 			if is_vim(pane) then
-- 				-- pass the keys through to vim/nvim
-- 				win:perform_action({
-- 					sendkey = { key = key, mods = resize_or_move == "resize" and "meta" or "ctrl" },
-- 				}, pane)
-- 			else
-- 				if resize_or_move == "resize" then
-- 					win:perform_action({ adjustpanesize = { direction_keys[key], 3 } }, pane)
-- 				else
-- 					win:perform_action({ activatepanedirection = direction_keys[key] }, pane)
-- 				end
-- 			end
-- 		end),
-- 	}
-- end
--
-- return {
--
-- 	-- window padding
-- 	window_padding = {
-- 		left = 10,
-- 		right = 10,
-- 		top = 10,
-- 		bottom = 12,
-- 	},
-- 	-- deactivate bell sound
-- 	audible_bell = "disabled",
--
-- 	-- define leader key
-- 	leader = { key = "a", mods = "ctrl", timeout_milliseconds = 1000 },
-- 	keys = {
-- 		-- full screen
-- 		{
-- 			key = "f",
-- 			mods = "leader",
-- 			action = wezterm.action.togglefullscreen,
-- 		},
-- 		-- horizontal split
-- 		{
-- 			key = "|",
-- 			mods = "leader",
-- 			action = wezterm.action.splithorizontal({ domain = "currentpanedomain" }),
-- 		},
-- 		-- vertical split
-- 		{
-- 			key = "-",
-- 			mods = "leader",
-- 			action = wezterm.action.splitvertical({ domain = "currentpanedomain" }),
-- 		},
-- 		-- move between split panes
-- 		split_nav("move", "h"),
-- 		split_nav("move", "j"),
-- 		split_nav("move", "k"),
-- 		split_nav("move", "l"),
-- 		-- resize panes
-- 		split_nav("resize", "h"),
-- 		split_nav("resize", "j"),
-- 		split_nav("resize", "k"),
-- 		split_nav("resize", "l"),
-- 	},
--
-- 	-- color_scheme = 'termnial.sexy',
-- 	-- color_scheme = "catppuccin mocha",
-- 	color_scheme = "rose-pine-moon",
-- 	enable_tab_bar = true,
--
-- 	native_macos_fullscreen_mode = true,
--
-- 	font = wezterm.font("monomiki nerd font", { weight = 400 }),
-- 	line_height = 1.2,
--
-- 	-- font = wezterm.font("monaspicexe nerd font", { weight = 400 }),
-- 	-- line_height = 1.2,
--
-- 	font_size = 14.0,
--
-- 	window_decorations = "resize",
-- 	mouse_bindings = {
-- 		-- ctrl-click will open the link under the mouse cursor
-- 		{
-- 			event = { up = { streak = 1, button = "left" } },
-- 			mods = "ctrl",
-- 			action = wezterm.action.openlinkatmousecursor,
-- 		},
-- 	},
-- }
