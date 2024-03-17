-- File to deal with colorschemes and appearance;
function ColorMyPencils(color) 
	vim.cmd('colorscheme ayu')
	vim.cmd('AirlineTheme ayu')
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	-- -- local disable_background = true

end

ColorMyPencils()
