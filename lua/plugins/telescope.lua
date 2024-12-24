return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local telescope = require("telescope")
      local builtin = require('telescope.builtin')
      local actions = require("telescope.actions")
      require('telescope').setup{
        results_height = 20;
        winblend = 20;
        width = 0.8;
        prompt_title = '';
        prompt_prefix = 'Files>';
        previewer = false;
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

      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


    end
  }
}

