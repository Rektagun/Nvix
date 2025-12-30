vim.g.mapleader = " "

vim.opt.clipboard = ""

vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('n', '<leader>e', ':NvimTreeOpen<CR>')
-- vim.keymap.set('n', 'q', ':NvimTreeClose<CR>')
-- vim.keymap.set('n', '<leader>sv', ':NvimTreeClose<CR>')
-- vim.keymap.set('n', '<leader>e', ':Ex<CR>')
-- vim.keymap.set('n', '<leader>q', ':w<CR>')
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>mm', ':MaximizerToggle<CR>')
vim.keymap.set('n', '<leader>so', ':w | :so<CR>')
vim.keymap.set('n', '<leader>sf', ':w | :so<CR>')
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')
vim.keymap.set('n', '<leader>rc', ':!/home/scripts/compile_and_run.sh %<CR>')
vim.keymap.set('n', '<leader>sv', '<C-w>v')
vim.keymap.set('n', '<leader>pp', ':e ~/.config/nvim/plugins.vim<CR>')
vim.keymap.set('n', '<leader>rr', ':e ~/.config/nvim/remap.vim<CR>')
vim.keymap.set('n', '<leader>bb', ':set background=dark<CR>')
vim.keymap.set('n', '<leader>bl', ':set background=light<CR>')

vim.keymap.set('i', '<C-j>', '<Esc>o')
vim.keymap.set('i', '<C-l>', '<Right>')

vim.keymap.set('n', '<S-l>', '<S-a>')
vim.keymap.set('n', '<S-h>', '<S-i>')

vim.keymap.set('n', '<C-j>', '<C-d>zz')
vim.keymap.set('n', '<C-k>', '<C-u>zz')

vim.keymap.set('n', '<leader>=', 'mzG<S-v>gg=`zzz')
vim.keymap.set('n', '<leader>sa', 'G<S-v>gg')
vim.keymap.set('n', '<Esc>', ':nohlsearch<CR>', { silent = true })

vim.keymap.set('n', '<leader>sh', '<C-w>s')
vim.keymap.set('n', '<leader>se', '<C-w>=')
vim.keymap.set('n', '<leader>sx', ':close<CR>')

-- Tmux navigation
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', { silent = true })
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', { silent = true })
vim.keymap.set('n', '<C-d>', ':wincmd j<CR>', { silent = true })
vim.keymap.set('n', '<C-u>', ':wincmd k<CR>', { silent = true })


-- LOVE2D DOCS via TELESCOPE
-- Search Love2d API with Telescope
vim.keymap.set('n', '<leader>ld', function()
  require('telescope.builtin').find_files({
    prompt_title = "Love2d API Files",
    cwd = vim.fn.expand("~/.local/share/love-api/modules/"),
  })
end, { desc = 'Browse Love2d API files' })
-- Or use live_grep to search content
vim.keymap.set('n', '<leader>ll', function()
  require('telescope.builtin').live_grep({
    prompt_title = "Search Love2d API",
    cwd = vim.fn.expand("~/.local/share/love-api/modules/"),
  })
end, { desc = 'Search Love2d API content' })


-- local pickers = require('telescope.pickers')
-- local finders = require('telescope.finders')
-- local conf = require('telescope.config').values
-- local make_entry = require('telescope.make_entry')
--
-- vim.keymap.set('n', '<leader>ll', function()
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
--           -- Check if it's a grep result (has line:col format)
--           local file, lnum, col, text = line:match("^(.-)%:(%d+)%:(%d+)%:(.*)$")
--
--           if file then
--             -- It's a grep result
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
--             -- It's just a filename
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
--       local actions = require('telescope.actions')
--       local action_state = require('telescope.actions.state')
--
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
-- local pickers = require('telescope.pickers')
-- local finders = require('telescope.finders')
-- local conf = require('telescope.config').values
-- local make_entry = require('telescope.make_entry')
--
-- vim.keymap.set('n', '<leader>ll', function()
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
--           -- Check if it's a grep result (has line:col format)
--           local file, lnum, col, text = line:match("^(.-)%:(%d+)%:(%d+)%:(.*)$")
--
--           if file then
--             -- It's a grep result
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
--             -- It's just a filename
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
--       local actions = require('telescope.actions')
--       local action_state = require('telescope.actions.state')
--
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
