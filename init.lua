-- https://dev.to/rstacruz/switching-apps-slow-down-my-productivity-and-how-i-fixed-it-2anb
-- https://superuser.com/questions/1340264/keyboard-shortcut-to-switch-to-specific-app-in-os-x

-- App configuration
APPS = {
	{ shortcut = "t", name = "Wezterm" },
	-- { shortcut = "i", name = "IntelliJ IDEA" },
	{ shortcut = "v", name = "Visual Studio Code" },
	{ shortcut = "e", name = "Zed" },
	-- { shortcut = "g", name = "GitHub Desktop" },
	{ shortcut = "n", name = "Obsidian" },
	{ shortcut = "b", name = "Firefox" },
	-- { shortcut = "c", name = "Slack" },
	-- { shortcut = "a", name = "Postman" },
}

-- Bind application shortcuts
for _, app in ipairs(APPS) do
	hs.hotkey.bind({ "ctrl", "alt", "cmd" }, app.shortcut, function()
		hs.application.launchOrFocus(app.name)
	end)
end
