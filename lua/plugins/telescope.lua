return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local telescope = require("telescope")
      local builtin = require('telescope.builtin')
      local actions = require("telescope.actions")
      require('telescope').setup {
        results_height = 20,
        winblend = 20,
        width = 0.8,
        prompt_title = '',
        prompt_prefix = 'Files>',
        previewer = false,
        defaults = {
          file_ignore_patterns = {}, -- Disable default file ignore patterns
          mappings = {
            i = {
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-c>"] = actions.close
            },
            n = {
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-c>"] = actions.close
            },
          },
        },
        extensions = {
          fzf = {
            hidden = false, -- Show hidden files and folders
          },
        },
      }

      -- Standard telescope keymaps
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
      vim.keymap.set('n', '<leader>fn', function()
        require('telescope.builtin').find_files {
          cwd = vim.fn.stdpath("config")
        }
      end)

      -- -- Love2D API search keymap
      -- vim.keymap.set('n', '<leader>ll', function()
      --   local pickers = require('telescope.pickers')
      --   local finders = require('telescope.finders')
      --   local conf = require('telescope.config').values
      --   local actions = require('telescope.actions')
      --   local action_state = require('telescope.actions.state')
      --
      --   local love_docs_path = vim.fn.expand("~/.local/share/love-api/modules/")
      --
      --   pickers.new({}, {
      --     prompt_title = "Love2D API (Fuzzy: Files & Content)",
      --     finder = finders.new_oneshot_job(
      --       { "sh", "-c",
      --         string.format([[
      --           (find %s -type f | sed 's|%s||') && \
      --           (rg --line-number --column --no-heading --color=never '' %s | sed 's|%s||')
      --         ]],
      --           love_docs_path, love_docs_path,
      --           love_docs_path, love_docs_path)
      --       },
      --       {
      --         entry_maker = function(line)
      --           local file, lnum, col, text = line:match("^(.-)%:(%d+)%:(%d+)%:(.*)$")
      --
      --           if file then
      --             return {
      --               value = line,
      --               display = line,
      --               ordinal = line,
      --               filename = love_docs_path .. file,
      --               lnum = tonumber(lnum),
      --               col = tonumber(col),
      --               text = text,
      --             }
      --           else
      --             return {
      --               value = line,
      --               display = line,
      --               ordinal = line,
      --               filename = love_docs_path .. line,
      --               lnum = 1,
      --               col = 1,
      --             }
      --           end
      --         end
      --       }
      --     ),
      --     sorter = conf.generic_sorter({}),
      --     previewer = conf.file_previewer({}),
      --     attach_mappings = function(prompt_bufnr, map)
      --       actions.select_default:replace(function()
      --         actions.close(prompt_bufnr)
      --         local selection = action_state.get_selected_entry()
      --
      --         vim.cmd("edit " .. selection.filename)
      --         if selection.lnum then
      --           vim.api.nvim_win_set_cursor(0, { selection.lnum, selection.col - 1 })
      --         end
      --       end)
      --       return true
      --     end,
      --   }):find()
      -- end, { desc = 'Search Love2D API (fuzzy)' })
    end
  }
}
