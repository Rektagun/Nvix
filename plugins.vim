

call plug#begin('~/local/share/nvim/plugged')


Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'voldikss/vim-floaterm'
" Plug 'folke/neodev.nvim'
" Plug 'folke/tokyonight.nvim'
" Plug 'jacoborus/tender.vim'
Plug 'rose-pine/neovim'
Plug 'davidosomething/vim-colors-meh'

Plug 'rafamadriz/friendly-snippets'

Plug 'kylechui/nvim-surround'


" ES2015 code snippets (Optional)
Plug 'epilande/vim-es2015-snippets'
" React code snippets
Plug 'epilande/vim-react-snippets'
" Ultisnips
Plug 'SirVer/ultisnips'

Plug 'mlaursen/vim-react-snippets'


" Plug 'mhinz/vim-startify'
" Plug 'nvimdev/dashboard-nvim'
" Plug 'mlaursen/vim-react-snippets'
" Plug 'honza/vim-snippets'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'numToStr/Comment.nvim'
Plug 'windwp/nvim-ts-autotag'
Plug 'mfussenegger/nvim-lint'
" Plug 'stevearc/conform.nvim'
" Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nguyenvukhang/nvim-toggler'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'iamcco/sran.nvim', { 'do': { -> sran#util#install() } }
Plug 'lukas-reineke/headlines.nvim'
Plug 'michaelb/sniprun'
Plug 'dstein64/vim-startuptime'
Plug 'gelguy/wilder.nvim'
Plug 'ray-x/web-tools.nvim'
Plug 'junegunn/goyo.vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'ellisonleao/gruvbox.nvim'
" Plug 'roxma/nvim-yarp', { 'do': 'pip install -r requirements.txt' }
Plug 'windwp/nvim-autopairs'
Plug 'ray-x/lsp_signature.nvim'
" Plug 'christoomey/vim-tmux-navigator'
Plug 'MunifTanjim/nui.nvim'
" Plug 'lewis6991/gitsigns.nvim'
Plug 'itchyny/calendar.vim'
Plug 'nvim-tree/nvim-web-devicons'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v3.x'}
Plug 'stevearc/dressing.nvim'
Plug 'ayu-theme/ayu-vim'
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
