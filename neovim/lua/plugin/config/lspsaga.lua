-- **********************************************************
-- * Author           : ricky97gr
-- * Email            : ricky97gr@163.com
-- * Github           : https://github.com/ricky97gr
-- * Create Time      : 2023-06-14 10:58
-- * FileName         : lspsaga.lua
-- * Description      :
-- **********************************************************

require("lspsaga").setup({
	preview = {
		lines_above = 0,
		lines_below = 10,
	},
	scroll_preview = {
		scroll_down = "<C-f>",
		scroll_up = "<C-b>",
	},
	request_timeout = 3500,

	-- See Customizing Lspsaga's Appearance
	ui = {
		-- This option only works in Neovim 0.9
		title = true,
		-- Border type can be single, double, rounded, solid, shadow.
		border = "single",
		winblend = 0,
		expand = "",
		collapse = "",
		code_action = "",
		incoming = " ",
		outgoing = " ",
		hover = " ",
		kind = {},
		keys = {
			quit = { "q", "<ESC>" },
		},
	},

	-- For default options for each command, see below
	finder = {
		max_height = 0.5,
		min_width = 30,
		force_max_height = false,
		keys = {
			-- <C-t> jump back
			toggle_or_open = "<CR>",
			vsplit = "s",
			split = "i",
			quit = { "q", "<ESC>" },
			close = "<ESC>",
		},
	},
	code_action = {
		num_shortcut = true,
		show_server_name = true,
		extend_gitsigns = true,
		keys = {
			-- string | table type
			quit = { "q", "<ESC>" },
			exec = "<CR>",
		},
	},
	rename = { quit = "<ESC>", exec = "<CR>" },
	-- etc.
	outline = {
		keys = {
			quit = { "q", "<ESC>" },
		},
	},
})
