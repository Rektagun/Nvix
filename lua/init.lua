vim.cmd [[packadd packer.nvim]]
require('packer').startup(function()
    use {'wbthomason/packer.nvim', opt = true}
    use 'wbthomason/packer.nvim'
end)
require('gitsigns').setup{}
require('adoc_pdf_live').setup()
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

