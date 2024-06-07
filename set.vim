set number
set relativenumber
set autoindent
set tabstop =2
set expandtab
set shiftwidth =2
set smarttab
set softtabstop =2
set mouse =a
set textwidth=80
set wrapmargin=2

" Remove padding from all sides
" set guioptions-=L
" set guioptions-=R
" set guioptions-=T
" set guioptions-=B




" »
" ↩
" ⋅
" set list
" set listchars=eol:↩,
" set listchars=tab:»⋅\ ,nbsp:␣,
set fillchars=eob:┃

set guicursor = ""
set nocompatible
set termguicolors

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set nofoldenable                     " Disable folding at startup.
set conceallevel=2
set concealcursor=nc
set shellslash
set colorcolumn=80
" hi Normal guibg=NONE ctermbg=NONE


" let g:airline#extensions#clock#updatetime = 1000
" let g:airline_section_y = '%{strftime("%H:%M")}'
" highlight clear StatusLine
" highlight clear StatusLineNC


let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<M-b>'





lua << EOF
-- Prime made me do it


-- vim.opt.guicursor = ""

-- vim.opt.nu = true
-- vim.opt.relativenumber = true

-- vim.opt.tabstop = 4
-- vim.opt.softtabstop = 4
-- vim.opt.shiftwidth = 4
-- vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

-- vim.opt.swapfile = false
-- vim.opt.backup = false
-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

-- vim.opt.termguicolors = true

vim.opt.scrolloff = 4
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 10

-- vim.opt.colorcolumn = "80"
EOF


