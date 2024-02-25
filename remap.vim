inoremap jk <Esc>

let mapleader = "\<Space>"
" noremap <leader>e :Ex<CR>
noremap <leader>ff :Telescope find_files<CR>


" Map <leader>a to append a new entry in harpoon list
" nnoremap <silent> <leader>a :lua require('harpoon.ui').nav_file()<CR>
" Map <C-e> to toggle the quick menu
" nnoremap <leader>h require('harpoon.ui').toggle_quick_menu<CR>

" nnoremap <leader>v :CHADopen<cr>
"
" -- Nvim tree
" nnoremap :Ex NvimTreeToggle
nnoremap <leader>e :NvimTreeToggle<CR>
" Use l to open files and directories in NvimTree
" nnoremap <silent> <buffer> l :lua require'nvim-tree'.on_keypress('edit')<CR>
" Use j to close NvimTree
" nnoremap <silent> <buffer> h :lua require'nvim-tree'.on_keypress('close')<CR>
" nnoremap <leader>s :bw<CR>

" nnoremap <leader>nt :lua require('nvterm').open()<CR>

" Toggle nvterm floating window
" nnoremap <leader>nt :lua require('nvterm').toggle()<CR>

" Close nvterm floating window
" nnoremap <leader>nc :lua require('nvterm').close()<CR>

" ToggleTerm
nnoremap <leader>t :ToggleTerm direction=horizontal size=17<CR>
" Use l to open files and directories in NvimTree


" Saving and stuff
nnoremap <C-s> :w \| so \| Startify<CR>
" nnoremap <C-n> :Startify<CR>
" Split window vertically
" nnoremap <C-n> :Startify<CR>
"
"
nnoremap <leader>sv <C-w>v

" Split window horizontally
nnoremap <leader>sh <C-w>s

" Make split windows equal width & height
nnoremap <leader>se <C-w>=

" Close current split window
nnoremap <leader>sx :close<CR>

" Open new tab
nnoremap <leader>to :tabnew<CR>

" Close current tab
nnoremap <leader>tx :tabclose<CR>

" Go to next tab
nnoremap <leader>tn :tabn<CR>

" Go to previous tab
" nnoremap <leader>tp :tabp<CR>

