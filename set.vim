:set number
:set relativenumber
:set autoindent
:set tabstop =4
:set shiftwidth =4
:set smarttab
:set softtabstop =4
:set mouse =a


" Set the color scheme
" colorscheme habamax 

" Set the background transparency to 30%

highlight Normal guibg=NONE ctermbg=NONE
highlight SignColumn guibg=NONE ctermbg=NONE
highlight VertSplit guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE
highlight EndOfBuffer guibg=NONE ctermbg=NONE
highlight CursorLineNr guibg=NONE ctermbg=NONE
highlight Comment gui=NONE guibg=NONE guifg=#6c6c6c
highlight String gui=NONE guibg=NONE guifg=#8e8e8e
highlight Character gui=NONE guibg=NONE guifg=#8e8e8e
highlight Number gui=NONE guibg=NONE guifg=#8e8e8e
highlight Boolean gui=NONE guibg=NONE guifg=#8e8e8e
highlight Float gui=NONE guibg=NONE guifg=#8e8e8e

" Remove padding from all sides
set guioptions-=L
set guioptions-=R
set guioptions-=T
set guioptions-=B

set nocompatible
set termguicolors
filetype plugin indent on
syntax enable
let g:airline_section_y = '%{strftime("%H:%M")}'

let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<M-b>'
