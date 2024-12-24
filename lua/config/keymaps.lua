-- Set leader key
vim.g.mapleader = " "

-- Key remaps
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')
-- vim.keymap.set('n', '<leader>e', ':Ex<CR>')
vim.keymap.set('n', '<leader>q', ':w<CR>')
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>mm', ':MaximizerToggle<CR>')
vim.keymap.set('n', 'w', '5w')
vim.keymap.set('n', '<leader>so', ':w | :so<CR>')
vim.keymap.set('n', '<leader>sf', ':w | :so<CR>')
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')
vim.keymap.set('n', '<leader>rc', ':!/home/scripts/compile_and_run.sh %<CR>')
vim.keymap.set('n', '<leader>sv', '<C-w>v')
vim.keymap.set('n', '<leader>pp', ':e ~/.config/nvim/plugins.vim<CR>')
vim.keymap.set('n', '<leader>rr', ':e ~/.config/nvim/remap.vim<CR>')

-- Insert mode mappings
vim.keymap.set('i', '<C-j>', '<Esc>o')
vim.keymap.set('i', '<C-l>', '<Right>')

-- Normal mode mappings
vim.keymap.set('n', '<S-l>', '<S-a>')
vim.keymap.set('n', '<S-h>', '<S-i>')

-- Tmux navigation
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', { silent = true })
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', { silent = true })
vim.keymap.set('n', '<C-d>', ':wincmd j<CR>', { silent = true })
vim.keymap.set('n', '<C-u>', ':wincmd k<CR>', { silent = true })

-- Page movement
vim.keymap.set('n', '<C-j>', '<C-d>zz')
vim.keymap.set('n', '<C-k>', '<C-u>zz')

-- File manipulation
vim.keymap.set('n', '<leader>=', 'mzG<S-v>gg=`zzz')
vim.keymap.set('n', '<leader>sa', 'G<S-v>gg')
vim.keymap.set('n', '<Esc>', ':nohlsearch<CR>', { silent = true })

-- Window management
vim.keymap.set('n', '<leader>sh', '<C-w>s')
vim.keymap.set('n', '<leader>se', '<C-w>=')
vim.keymap.set('n', '<leader>sx', ':close<CR>')
