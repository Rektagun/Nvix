-- Require the nvim-tree.lua plugin
local nvim_tree = require("nvim-tree")

-- Set up NvimTree configuration
nvim_tree.setup({
	renderer = {
		add_trailing = false,
		group_empty = false,
		full_name = false,
		root_folder_label = ":~:s?$?/..?",
		indent_width = 2,
		special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
		symlink_destination = true,
		highlight_git = "none",
		highlight_diagnostics = "none",
		highlight_opened_files = "none",
		highlight_modified = "none",
		highlight_bookmarks = "none",
		highlight_clipboard = "name",
		indent_markers = {
			enable = false,
			inline_arrows = true,
			icons = {
				corner = "⌞",
				edge = " ║ ",
				item = "│",
				bottom = "─",
				none = " ",
			},
		},
		icons = {
			web_devicons = {
				file = {
					enable = true,
					color = true,
				},
				folder = {
					enable = false,
					color = true,
				},
			},
			git_placement = "before",
			modified_placement = "after",
			diagnostics_placement = "signcolumn",
			bookmarks_placement = "signcolumn",
			padding = " ",
			symlink_arrow = " ➛ ",
			show = {
				file = true,
				folder = true,
				folder_arrow = true,
				git = true,
				modified = true,
				diagnostics = true,
				bookmarks = true,
			},
			glyphs = {
				default = "",
				symlink = "",
				bookmark = "󰆤",
				modified = "●",
				folder = {
					arrow_closed = "↪", -- arrow when folder is closed
					arrow_open = "➜", -- arrow when folder is open
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
					symlink_open = "",
				},
				git = {
					unstaged = "⋃",
					staged = "Ѕ",
					unmerged = "",
					renamed = "➜",
					untracked = "★",
					deleted = "",
					ignored = "◌",
				},
			},
		},
	},
	view = {
		side = 'right', -- Position the NvimTree on the right side of the screen
		width = 40,     -- Adjust the width of the NvimTree if needed
	},
	-- disable window_picker for
	-- explorer to work well with
	-- window splits
	actions = {
		open_file = {
			window_picker = { 
				enable = false,
			},
		},
	},
	-- Disable window_picker for explorer to work well with window splits
	disable_netrw = true,  -- disable netrw completely
	hijack_netrw = true,   -- hijack netrw window on startup
	hijack_cursor = true,  -- put the cursor at the start of the filename when opening a file
	update_cwd = true,     -- update the cwd of the tree when changing nvim's directory (DirChanged event)
	update_focused_file = {
		enable = true,      -- update the focused file on `BufEnter`, un-collapses the folders recursively until it finds the file
		update_cwd = true,  -- automatically updates the cwd to the folder of the focused file
		ignore_list = {},   -- don't update cwd if the file is in this list (filetype): e.g. {"java","xml"}
	},
	system_open = {
		cmd = nil,           -- custom command to open the treeview with a specifcally chosen file
		args = {},           -- command arguments
	},
})
