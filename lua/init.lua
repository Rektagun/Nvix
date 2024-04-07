vim.cmd [[packadd packer.nvim]]
require('packer').startup(function()
    use {'wbthomason/packer.nvim', opt = true}
    use 'wbthomason/packer.nvim'
end)
require('plenary')
require('gitsigns').setup{}
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

-- require("nvim-autopairs").setup{}
-- require("live-server").setup{}
--
require "lsp_signature".setup({
	bind = true, -- This is mandatory, otherwise border config won't get registered.
	handler_opts = {
		border = "rounded"
	}
})

-- vim.cmd('colorscheme ayu')
-- vim.cmd('AirlineTheme ayu')


-- require('session-lens').setup {
--     path_display={'shorten'},
-- }

vim.g.expandtab = true


-- require("auto-session").setup {
-- 	log_level = "error",
-- 	auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
-- }


-- Neovide
-- if vim.g.neovide then
-- 	vim.g.neovide_scale_factor = 1.0 
-- 	vim.g.neovide_padding_top = 0
-- 	vim.g.neovide_padding_bottom = 0
-- 	vim.g.neovide_padding_right = 0
-- 	vim.g.neovide_padding_left = 0

-- 	vim.g.neovide_scroll_animation_length = 0.3
-- 	vim.g.neovide_hide_mouse_when_typing = true
-- 	vim.g.neovide_theme = 'ayu'
-- 	vim.g.neovide_unlink_border_highlights = true
-- 	vim.g.neovide_refresh_rate = 10
-- 	vim.g.neovide_refresh_rate_idle = 2
-- 	vim.g.neovide_no_idle = true
-- 	vim.g.neovide_cursor_animation_length = 0.13
-- 	vim.g.neovide_cursor_trail_size = 0.8
-- 	vim.g.neovide_cursor_animate_command_line = true

-- 	vim.g.neovide_cursor_smooth_blink = true
-- 	vim.g.neovide_cursor_vfx_mode = "pixiedust"
-- end
