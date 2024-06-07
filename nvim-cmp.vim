

lua <<EOF
-- Set up nvim-cmp.
local cmp = require'cmp'

cmp.setup({
snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)

    require('luasnip').lsp_expand(args.body) -- For `luasnip` users
    require('vim-react-snippets')(args.body)
    vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
    end,
},

-- lua <<EOF
-- -- Set up nvim-cmp.
-- local cmp = require'cmp'
-- require("luasnip.loaders.from_vscode").lazy_load()


-- cmp.setup({
-- snippet = {
    -- 	expand = function(args)
    -- 	require('luasnip').lsp_expand(args.body) 	
    -- 	-- require('vsnip').lsp_expand(args.body) 	
    --  -- require('vim-react-snippets')(args.body)
    --     end,
    -- },


    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
    ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
    { name = 'vim-react-snippets'},
    -- { name = "luasnip" },
    { name = 'ultisnips'}, -- For ultisnips users.
    { name = 'nvim_lsp'},
    { name = 'buffer'},
    { name = 'path'},
    })
    })


cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
    { name = 'git' },
    }, {
        { name = 'buffer' },
    })
    })

cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
    })

cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
    { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
    })

EOF
