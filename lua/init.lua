vim.cmd [[packadd packer.nvim]]
require('packer').startup(function()
    use {'wbthomason/packer.nvim', opt = true}
-- use {

-- disable netrw at the very start of your init.lua
-- end)
-- Initialize Packer
-- require('packer').startup(function()
    -- Packer package manager
    use 'wbthomason/packer.nvim'

    -- Add nvterm plugin
    use 'nvim-lua/nvterm.nvim'
end)
-- Minimal config


require("themery").setup({
  themes = {"gruvbox", "ayu"}, -- Your list of installed colorschemes
  -- themeConfigFile = "~/.config/nvim/lua/theme.lua", -- Described below

  themeConfigFile = "~/.config/nvim/lua/theme.lua", -- Described below
  livePreview = true, -- Apply theme while browsing. Default to true.
})

-- require("nvterm").setup({
--   terminals = {
--     shell = vim.o.shell,
--     list = {},
--     type_opts = {
--       float = {
--         relative = 'editor',
--         row = 0.3,
--         col = 0.25,
--         width = 0.5,
--         height = 0.4,
--         border = "single",
--       },
--       horizontal = { location = "rightbelow", split_ratio = .3, },
--       vertical = { location = "rightbelow", split_ratio = .5 },
--     }
--   },
--   behavior = {
--     autoclose_on_quit = {
--       enabled = false,
--       confirm = true,
--     },
--     close_on_exit = true,
--     auto_insert = true,
--   },
-- })

-- vim.cmd('set background=' .. vim.fn.system('$TERM_BACKGROUND'):gsub('\n', ''))


-- require("noice").setup({
--   lsp = {
--     -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
--     override = {
--       ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
--       ["vim.lsp.util.stylize_markdown"] = true,
--       ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
--     },
--   },
--   -- you can enable a preset for easier configuration
--   presets = {
--     bottom_search = true, -- use a classic bottom cmdline for search
--     command_palette = true, -- position the cmdline and popupmenu together
--     long_message_to_split = true, -- long messages will be sent to a split
--     inc_rename = false, -- enables an input dialog for inc-rename.nvim
--     lsp_doc_border = false, -- add a border to hover docs and signature help
--   },
-- })






vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- require(config.nvim.after.plugin.colors)
-- optionally enable 24-bit colour
vim.opt.termguicolors = true

