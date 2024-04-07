noremap <buffer> <leader>p :w \| :so \| :PlugInstall<CR>


call plug#begin('~/local/share/nvim/plugged')


Plug 'iamcco/sran.nvim', { 'do': { -> sran#util#install() } }
Plug 'lukas-reineke/headlines.nvim'
Plug 'michaelb/sniprun'
Plug 'dstein64/vim-startuptime'
Plug 'gelguy/wilder.nvim'
Plug 'ray-x/web-tools.nvim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'ellisonleao/gruvbox.nvim'
" Plug 'roxma/nvim-yarp', { 'do': 'pip install -r requirements.txt' }
Plug 'windwp/nvim-autopairs'
Plug 'ray-x/lsp_signature.nvim'
Plug 'christoomey/vim-tmux-navigator'

Plug 'MunifTanjim/nui.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'itchyny/calendar.vim'
" Plug 'wbthomason/packer.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
" Plug 'ThePrimeagen/harpoon', { 'branch': 'harpoon2', 'do': { -> PlenaryCompile() } }
" Plug 'tpope/vim-fugitive'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v3.x'}
Plug 'stevearc/dressing.nvim'
Plug 'ayu-theme/ayu-vim'
" Plug 'nvim-lua/popup.nvim'



Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-emoji'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'L3MON4D3/LuaSnip', {'tag': 'v2.*', 'do': 'make install_jsregexp'} " Replace <CurrentMajor> by the latest released major (first number of latest release)






call plug#end()
