-- require("lua.set")
-- require("lua.remap")

require("neodev").setup()
require('plenary')
-- require('gitsigns').setup{}
require('nvim-surround').setup()
-- require('nvim-toggler').setup()
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

require "lsp_signature".setup({
	bind = true, -- This is mandatory, otherwise border config won't get registered.
	handler_opts = {
		border = "rounded"
	}
})


