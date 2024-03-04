:set number
:set relativenumber
:set autoindent
:set tabstop =4
:set shiftwidth =4
:set smarttab
:set softtabstop =4
:set mouse =a

" Remove padding from all sides
set guioptions-=L
set guioptions-=R
set guioptions-=T
set guioptions-=B

" set guicursor = ""
set nocompatible
set termguicolors

let g:airline_section_y = '%{strftime("%H:%M")}'

let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<M-b>'
