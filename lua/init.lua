require('plenary')
-- require('gitsigns').setup{}
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

require "lsp_signature".setup({
	bind = true, -- This is mandatory, otherwise border config won't get registered.
	handler_opts = {
		border = "rounded"
	}
})

require('nvim-toggler').setup()
