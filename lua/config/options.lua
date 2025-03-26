-- optionally enable 24-bit colour
vim.opt.termguicolors = true

vim.opt.signcolumn = "no"
-- :set scl=yes  " force the signcolumn to appear
-- :set scl=auto " return the signcolumn to the default behaviour

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.clipboard = "unnamedplus"

-- Indentation
vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.smarttab = true
vim.opt.softtabstop = 2

-- UI settings
vim.opt.mouse = 'a'
vim.opt.fillchars = { eob = ' ' }
-- vim.opt.fillchars = { eob = '┃' }
vim.opt.guicursor = "n-v-i-c:block"
-- vim.opt.guicursor = "n-v-i-c:block-Cursor"
vim.opt.termguicolors = true
vim.opt.colorcolumn = '80'

-- Text formatting
vim.opt.textwidth = 80
vim.opt.formatoptions = 'cqt'
vim.opt.wrapmargin = 0

-- Folding
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldenable = false

-- Concealing
vim.opt.conceallevel = 2
vim.opt.concealcursor = 'nc'

-- -- System
-- vim.opt.shellslash = true
-- vim.opt.compatible = false

-- Optional: Uncomment if you want to show invisible characters
-- vim.opt.list = true
-- vim.opt.listchars = {
--   eol = '↩',
--   tab = '»⋅',
--   nbsp = '␣'
-- }
