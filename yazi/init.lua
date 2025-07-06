require("full-border"):setup()
-- ~/.config/yazi/init.lua
--require("relative-motions"):setup({ show_numbers = "none", show_motion = true })
require("starship"):setup()

require("custom-shell"):setup({
	save_history = true,
	history_file = "default",
})
require("git"):setup()
require("copy-file-contents"):setup({
	clipboard_cmd = "default",
	append_char = "\n",
	notification = true,
})

require("mactag"):setup({
	-- Keys used to add or remove tags
	keys = {
		r = "Red",
		o = "Orange",
		y = "Yellow",
		g = "Green",
		b = "Blue",
		p = "Purple",
	},
	-- Colors used to display tags
	colors = {
		Red = "#ee7b70",
		Orange = "#f5bd5c",
		Yellow = "#fbe764",
		Green = "#91fc87",
		Blue = "#5fa3f8",
		Purple = "#cb88f8",
	},
})

-- You can configure your bookmarks by lua language
local bookmarks = {}
require("yamb"):setup({
	-- Optional, the path ending with path seperator represents folder.
	bookmarks = bookmarks,
	jump_notify = false,
	-- Optional, the cli of fzf.
	cli = "fzf",
	-- Optional, a string used for randomly generating keys, where the preceding characters have higher priority.
	keys = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ",
	-- Optional, the path of bookmarks
	path = "/Users/jakejing/.config/yazi/plugins/yamb.yazi/bookmarks",
})

function Status:name()
	local h = self._tab.current.hovered
	if not h then
		return ui.Line({})
	end
	local linked = ""
	if h.link_to ~= nil then
		linked = " -> " .. tostring(h.link_to)
	end
	return ui.Line(" " .. h.name .. linked)
end

-- Header name
function header_host()
	if ya.target_family() ~= "unix" then
		return ui.Line({})
	end
	return ui.Span(ya.user_name() .. "@yazi" .. ": "):fg("blue")
end

Header:children_add(header_host, 500, Header.LEFT)
-- group of files and username at the bottom
function Status_owner()
	local h = cx.active.current.hovered
	if h == nil or ya.target_family() ~= "unix" then
		return ui.Line({})
	end

	return ui.Line({
		ui.Span(ya.user_name(h.cha.uid) or tostring(h.cha.uid)):fg("magenta"),
		ui.Span(":"),
		ui.Span(ya.group_name(h.cha.gid) or tostring(h.cha.gid)):fg("magenta"),
		ui.Span(" "),
	})
end

Status:children_add(Status_owner, 500, Status.RIGHT)
