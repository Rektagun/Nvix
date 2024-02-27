


call plug#begin('~/local/share/nvim/plugged')



Plug 'rktjmp/shenzhen-solitaire.nvim'
Plug 'alec-gibson/nvim-tetris'

Plug 'jim-fx/sudoku.nvim'
Plug 'ThePrimeagen/vim-be-good'
Plug 'MunifTanjim/nui.nvim'
" Plug 'mhinz/vim-grepper'
Plug 'ggandor/leap.nvim'
" Plug 'jdhao/better-escape.vim'
Plug 'folke/noice.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'nguyenvukhang/nvim-toggler'
Plug 'jinh0/eyeliner.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/calendar.vim'
Plug 'rose-pine/neovim'
Plug 'wbthomason/packer.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'
Plug 'morhetz/gruvbox'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
" Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
" Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'zaldih/themery.nvim'
Plug 'nvim-tree/nvim-web-devicons' " optional
Plug 'alexghergh/nvim-tmux-navigation'
  " autocompletion
Plug 'hrsh7th/nvim-cmp'      " Completion plugin
Plug 'hrsh7th/cmp-buffer'    " Source for text in buffer
Plug 'hrsh7th/cmp-path'      " Source for file system paths
Plug 'L3MON4D3/LuaSnip'      " Snippet engine
Plug 'saadparwaiz1/cmp_luasnip'  " LuaSnip source for autocompletion
Plug 'rafamadriz/friendly-snippets'  " Collection of snippets
" Plug 'NvChad/nvterm' " NvTerminal 
Plug 'folke/tokyonight.nvim'
Plug 'rktjmp/lush.nvim'
Plug 'Shatur/neovim-ayu'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'nvim-lua/plenary.nvim'
Plug 'ThePrimeagen/harpoon', { 'branch': 'harpoon2', 'do': { -> PlenaryCompile() } }
" Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
Plug 'tpope/vim-fugitive'
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf.vim'

call plug#end()
