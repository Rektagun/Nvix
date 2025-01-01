return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    config = function ()
      -- Require the nvim-tree.lua plugin
      local nvim_tree = require("nvim-tree")

      -- Set up NvimTree configuration
      nvim_tree.setup({
        view = {
          centralize_selection = true,
          cursorline = true,
          debounce_delay = 15,
          side = "right",
          preserve_window_proportions = false,
          number = false,
          relativenumber = false,
          signcolumn = "no",
          width = 30,
          float = {
            enable = true,
            quit_on_focus_loss = true,
            open_win_config = {
              relative = "editor",
              border = "rounded",
              width = 96,
              height = 18,
              row = 0,
              col = 20,
            },
          },
        },
        renderer = {
          indent_width = 2,
          indent_markers = {
            enable = true,
            inline_arrows = true,
            icons = {
              corner = "└",
              edge = "╎",
              item = "├",
              bottom = "─",
              none = " ",
            },
          },
          icons = {
            git_placement = "after",
            modified_placement = "after",
            hidden_placement = "after",
            diagnostics_placement = "signcolumn",
            bookmarks_placement = "signcolumn",
            padding = " ",
            symlink_arrow = " ➞ ",
          },
        },
        actions = {
          open_file = {
            window_picker = {
              enable = false,
            },
          },
        },
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

    end
  }
}

