call plug#begin('~/local/share/nvim/plugged')



Plug 'MunifTanjim/nui.nvim'
Plug 'folke/zen-mode.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'jinh0/eyeliner.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/calendar.vim'
Plug 'wbthomason/packer.nvim'
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
Plug 'ThePrimeagen/harpoon', { 'branch': 'harpoon2', 'do': { -> PlenaryCompile() } }
Plug 'tpope/vim-fugitive'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v3.x'}
Plug 'stevearc/dressing.nvim'
Plug 'ayu-theme/ayu-vim'
Plug 'nvim-lua/popup.nvim'
Plug 'marioortizmanero/adoc-pdf-live.nvim'



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




Plug 'iamcco/sran.nvim', { 'do': { -> sran#util#install() } }
" Plug 'iamcco/clock.nvim'
Plug 'jakewvincent/mkdnflow.nvim'
Plug 'tadmccorkle/markdown.nvim'
Plug 'lukas-reineke/headlines.nvim'
Plug 'michaelb/sniprun'
Plug 'dhruvasagar/vim-table-mode'
Plug 'nvim-orgmode/orgmode'
" Plug 'dstein64/vim-startuptime'
Plug 'ThePrimeagen/vim-be-good'
Plug 'gelguy/wilder.nvim'
Plug 'ray-x/web-tools.nvim'
" Plug 'folke/neodev.nvim'
Plug 'akinsho/org-bullets.nvim'
Plug 'dhruvasagar/vim-dotoo'
Plug 'windwp/nvim-ts-autotag'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'glepnir/dashboard-nvim'



call plug#end()
