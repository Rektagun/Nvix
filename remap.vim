inoremap jk <Esc>
" inoremap kj <Esc>
let mapleader = "\<Space>"
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

" nnoremap <leader>q :qa!<CR>
"
nnoremap <leader>q :w<CR>
nnoremap <leader>w :w<CR>

nnoremap <leader>mm :MaximizerToggle<CR>
" vnoremap <silent><F3> :MaximizerToggle<CR>gv
" inoremap <silent><F3> <C-o>:MaximizerToggle<CR>

nnoremap w 5w



nnoremap <leader>sf :w \| :so<CR>
nnoremap <leader>ct :Calendar -view=clock<CR>
" nnoremap <C-j> <C-d>zz
" nnoremap <C-k> <C-u>zz
nnoremap n nzz
nnoremap N Nzz
" xnoremap <leader>p "_dP
" nnoremap <C-s> :Startify<CR>
nnoremap <leader>p :w \| so \| PlugInstall<CR>
" nnoremap <C-s> :w \| so \| Startify<CR>
nnoremap <leader>rc :!/home/scripts/compile_and_run.sh %<CR>
nnoremap <leader>sv <C-w>v
nnoremap <leader>pp :e ~/.config/nvim/plugins.vim<CR>
nnoremap <leader>rr :e ~/.config/nvim/remap.vim<CR>

" New line while in insert mode
inoremap <C-j> <Esc>o


" Enter insert mode at the end/start
nnoremap <S-l> <S-a>
nnoremap <S-h> <S-i>

" Move right
inoremap <C-l> <Right>

" Tmux nav
nnoremap <silent><C-h> :wincmd h<CR>
nnoremap <silent><C-l> :wincmd l<CR>
nnoremap <silent><C-d> :wincmd j<CR>
nnoremap <silent><C-u> :wincmd k<CR>

" Page up/down
nnoremap <C-j> <C-d>zz
nnoremap <C-k> <C-u>zz




" indent the whole file
nnoremap <leader>= mzG<S-v>gg=`zzz
nnoremap <leader>sa G<S-v>gg
nnoremap <silent><Esc> :nohlsearch<CR>


" nnoremap <leader>vb :VimBeGood<CR>

" Split window horizontally
nnoremap <leader>sh <C-w>s


" Make split windows equal width & height
nnoremap <leader>se <C-w>=

" Close current split window
nnoremap <leader>sx :close<CR>

" Open new tab
" nnoremap <leader>to :tabnew<CR>

" " Close current tab
" nnoremap <leader>tx :tabclose<CR>

" " Go to next tab
" nnoremap <leader>tn :tabn<CR>

" " Go to previous tab
" nnoremap <leader>tp :tabp<CR>



" -- lua << EOF
" -- -- Prime made me do it


" -- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
" -- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

" -- vim.keymap.set("n", "Q", "<nop>")

" -- EOF
