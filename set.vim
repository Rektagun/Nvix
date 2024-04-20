set number
" set relativenumber
set autoindent
set tabstop =4
set expandtab
set shiftwidth =4
set smarttab
set softtabstop =4
set mouse =a



" Remove padding from all sides
set guioptions-=L
set guioptions-=R
set guioptions-=T
set guioptions-=B


set list
set listchars=tab:⋅\ ,eol:↩,trail:⋅
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



" let g:airline#extensions#clock#updatetime = 1000
" let g:airline_section_y = '%{strftime("%H:%M")}'
" highlight clear StatusLine
" highlight clear StatusLineNC


let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<M-b>'
