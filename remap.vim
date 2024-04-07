inoremap jk <Esc>
" inoremap kj <Esc>
let mapleader = "\<Space>"
noremap <leader>ff :Telescope find_files<CR>
" nnoremap <silent> <leader>a :lua require('harpoon.ui').nav_file()<CR>
" nnoremap <leader>h require('harpoon.ui').toggle_quick_menu<CR>
" nnoremap <leader>sk :lua require('mix').show_popup()<CR>
nnoremap <leader>e :NvimTreeToggle<CR>
" Use l to open files and directories in NvimTree
" nnoremap <silent> <buffer> l :lua require'nvim-tree'.on_keypress('edit')<CR>
" Use j to close NvimTree
" nnoremap <silent><buffer> h :lua require'nvim-tree'.on_keypress('close')<CR>
" nnoremap <leader>s :bw<CR>
nnoremap <leader>t :ToggleTerm direction=horizontal size=17<CR>
nnoremap <leader>q :qa!<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>s :w \| :so<CR>
nnoremap <leader>ct :Calendar -view=clock<CR>
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzzzv
nnoremap N Nzzzv
xnoremap <leader>p "_dP
" nnoremap <C-s> :Startify<CR>
" nnoremap <leader>p :w \| so \| PlugInstall<CR>
" nnoremap <C-s> :w \| so \| Startify<CR>
nnoremap <leader>rc :!/home/scripts/compile_and_run.sh %<CR>
nnoremap <leader>sv <C-w>v
nnoremap <leader>pp :e ~/.config/nvim/plugins.vim<CR>
nnoremap <leader>rr :e ~/.config/nvim/remap.vim<CR>
" New line while in insert mode
inoremap <S-CR> <Esc>o



let g:tmux_navigator_no_mappings = 1

noremap <silent> {Left-Mapping} :<C-U>TmuxNavigateLeft<cr>
noremap <silent> {Down-Mapping} :<C-U>TmuxNavigateDown<cr>
noremap <silent> {Up-Mapping} :<C-U>TmuxNavigateUp<cr>
noremap <silent> {Right-Mapping} :<C-U>TmuxNavigateRight<cr>
noremap <silent> {Previous-Mapping} :<C-U>TmuxNavigatePrevious<cr>





" nnoremap <leader>vb :VimBeGood<CR>

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
nnoremap <leader>tp :tabp<CR>

