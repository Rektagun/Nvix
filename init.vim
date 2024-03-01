" source ~\AppData\Local\nvim\remap.vim
" source ~\AppData\Local\nvim\set.vim

source ~/.config/nvim/remap.vim
source ~/.config/nvim/set.vim
source ~/.config/nvim/plugins.vim

" nvim_set_hl(0, "Normal", { bg = "none" })


" Don't copy this example
"

lua <<EOF
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
lsp_zero.default_keymaps({buffer = bufnr})
end)
EOF






" let g:better_escape_interval = 50

let g:startify_lists = [
    \ { 'type': 'files',     'header': ['   Recent Files'] },
    \ { 'type': 'dir',       'header': ['   Current Directory'] },
    \ { 'type': 'bookmarks', 'header': ['   Bookmarks'] },
    \ { 'type': 'commands',  'header': ['   Commands'] },
    \ ]


" In your init.lua or init.vim
" set termguicolors
" lua << EOF
" require("bufferline").setup{}
" EOF
"
set guicursor+=n:block-Cursor

lua << END
require("toggleterm").setup()
END
 

" lua << END
" require('telescope').setup{
"     defaults = {
"         file_ignore_patterns = {}, -- Disable default file ignore patterns
"     },
"     extensions = {
"         fzf = {
"             hidden = true, -- Show hidden files and folders
"         }
"     }
" }
" END

" lua << END
" require("maps").show_popup()
" END

lua << END
local cmp = require('cmp')
cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = {
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        }),
        ['<Tab>'] = function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif require('luasnip').expand_or_jumpable() then
                require('luasnip').expand_or_jump()
            else
                fallback()
            end
        end,
        ['<S-Tab>'] = function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end,
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path' },
    },
})
END

" Time"


let g:startify_custom_header = [
\ '/================================================================================================-\',
\ '|										⊹																	',
\ '|	*	⠀⠀⠀⠀⠀⠀⠀⠀⠀˚⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣶⣿⣷⣶⣄⠀⠀⠀⭒˚⠀⠀⠀⠀⠀⣠⣴⣶⣾⣿⣿⣶⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⠶⠖⠛⠶⢶⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀₊⠀⠀⠀⠀⠀⠀⠀⠀⠀		    ',
\ '|		⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⣠⡿⠿⠃⠀⠀⠀⠀⠀⠈⢻⣦⠀⠀⠀⠀⠀˚☽˚.⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀	*',
\ '|		⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⣿⡗⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀		   		⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⊹',
\ '|		⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⢹⣧⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ 	    	',
\ '|		⠀*⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀ ⠀⣿⣷⣦⣤⣀⣀⣠⣤⣾⣿⡇ ⣀⣀⣀⣀⣀⣀⣀⣀⣀⡀⠀⠀⠀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀	    	',
\ '|		⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⣸⣿⣿⣿⣿⣿⣿⡛⠛⠛⠛⠛⠋⠉⠀⠀⠀⠀⠀⠀⠀ ⣿⠿⠿⠿⢿⣿⣿⠿⠿⠏⠙⣿ ⣿⠁⠀⠀⠀⠀⠀⠀⠉⢿⣄⣤⣾⠋⠀⠀⠀⠀⠀⠀⠀⢹⣷			   	⊹',
\ '|		⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⢰⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⊹⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀  ⣿⡇⣿⠀ ⠀⠀⠀⠀⠀⠀⠀⠻⠿⠁⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿			   	₊˚⊹',
\ '|	₊˚⊹⠀ ⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⡟⠀⣀⣀⣀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⣠⣿⣄⠀⠀⠀⠀⠀⠀⠀⢀⣀⣿⣿⣿ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿			   ⠀⠀⠀⠀⠀⠀⠀ 		*',
\ '|		⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⡏⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡿⠋			   		⠀⠀⠀⠀⠀⠀˚',
\ '|		⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⡿⢻⣿⣿⠇⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⣤⣾⠟⠀⠀			  ⠀⠀⠀⠀⠀⠀⠀⠀ 	˚',
\ '|		⠀⠀⠀⠀⠀⠀˚⠀⠀⠀⠀⠀⠀⠀⣼⣿⠃⠀⣿⡟⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⢠⣾⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⢸⡿⠏⠁ ⠀⣻⡿⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠈⠻⣿⡀⠀⠀		',
\ '|		⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡿⠋⠀⢰⣿⠁⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣇⣴⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀ ⣠⡾⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠀ ⠻⣦⡀		',
\ '|		  ⢀⣤⠶⠶⠶⠶⣤⣤⣤⣤⣴⠟⠁⠀⢀⣾⠇⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⢹⡇⠀⠀⠀⠀⠀⠀⠀⠀⢸  ⣿⡅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⠀⠀⢹⣷		*					⊹',
\ '|		⠀⢠⡿⠁⠀⠀⠀⠀⠀⠙⠛⠛⠃⠀⠀⢀⣾⡟⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀ ⢾⡇⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⣿⡀⠀⠀⠀⠀⠀⠀ ⢀⣰⣆⠀⠀⠀⠀ ⠀⠀⠀ ⠀⢸⣿		',
\ '|		⢰⣿⣁⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣤⣶⠿⠁⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⠏⠀⠀˚⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⣿⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀ ⢸⣿		',
\ '|		⠈⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⠛⠛⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠉⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠈⠛⠛⠛⠛⠙⠻⠟⠛⠛⠛⠛⠀⠙⠛⠛⠛⠛⠛⠛⠛⠛⠋⠀⠉⠈⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠋						⊹₊˚',
\ '|																											',
\ '\============================================================================================================/',
\ ]


" let g:startify_custom_header = [
" \ '/------------------------------------------------\',
" \ '|⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡥⠈⠂⠀⠀⠀⠀⠀⠀⠀⣼⠉⠙⠲⣄⠈⠣⡀⠀⠀⠈⢻⡦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ |',
" \ '|⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡄⠀⠀⠀⠀⠀⠀⠀⢠⠇⠀⠀⠀⠈⣷⡄⠈⠄⠀⠀⠀⢧⠀⠑⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ |',
" \ '|⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡄⠀⠀⠀⡀⠀⢠⣿⣤⣤⣶⣶⣾⣿⣿⡄⢸⠀⠀⠀⢸⣄⣤⣼⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀ |',
" \ '|⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡄⠀⠀⠇⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⢸⠀⠀⠀⣼⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀ |',
" \ '|⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣀⣀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⢀⣼⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀  |',
" \ '|⠀⠀Hey Cutie⠀ ⠀⠘⠉⠁⠀⠈⠉⠙⠛⠿⠿⠽⠿⠟⠛⡉⠛⠲⣿⣿⠿⡿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ |',
" \ '|⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⢠⡏⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ |',
" \ '|⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⣠⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ |',
" \ '|⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢔⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ |',
" \ '\------------------------------------------------/',
" \ ]
