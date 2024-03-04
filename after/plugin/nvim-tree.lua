-- Require the nvim-tree.lua plugin
local nvim_tree = require("nvim-tree")

-- Set up NvimTree configuration
nvim_tree.setup({
	renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "└", -- arrow when folder is closed
          arrow_open = "─", -- arrow when folder is open
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
