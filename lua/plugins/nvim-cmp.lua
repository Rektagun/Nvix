return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "mlaursen/vim-react-snippets",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-vsnip",
      "hrsh7th/vim-vsnip",
      "L3MON4D3/LuaSnip",
      "dcampos/nvim-snippy",
      "brenoprata10/nvim-highlight-colors",
      "windwp/nvim-autopairs",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      local cmp = require 'cmp'
      local cmp_autopairs = require('nvim-autopairs.completion.cmp')
      local ts_utils = require("nvim-treesitter.ts_utils")
      local ts_node_func_parens_disabled = {
        named_imports = true,
        use_declaration = true,
      }
      local default_handler = cmp_autopairs.filetypes["*"]["("].handler
      cmp_autopairs.filetypes["*"]["("].handler = function(char, item, bufnr, rules, commit_character)
        local node_type = ts_utils.get_node_at_cursor():type()
        if ts_node_func_parens_disabled[node_type] then
          if item.data then
            item.data.funcParensDisabled = true
          else
            char = ""
          end
        end
        default_handler(char, item, bufnr, rules, commit_character)
      end
      cmp.event:on(
        'confirm_done',
        cmp_autopairs.on_confirm_done()
      )

      -- Custom sorting function that deprioritizes snippets
      local types = require('cmp.types')
      local compare = require('cmp.config.compare')

      local deprioritize_snippet = function(entry1, entry2)
        local kind1 = entry1:get_kind()
        local kind2 = entry2:get_kind()

        if kind1 == types.lsp.CompletionItemKind.Snippet and kind2 ~= types.lsp.CompletionItemKind.Snippet then
          return false
        elseif kind1 ~= types.lsp.CompletionItemKind.Snippet and kind2 == types.lsp.CompletionItemKind.Snippet then
          return true
        end
      end

      cmp.setup({
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        formatting = {
          format = require("nvim-highlight-colors").format
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
          ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
        }),
        sorting = {
          priority_weight = 2,
          comparators = {
            deprioritize_snippet, -- Our custom comparator comes first
            compare.offset,
            compare.exact,
            compare.score,
            compare.recently_used,
            compare.kind,
            compare.sort_text,
            compare.length,
            compare.order,
          },
        },
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'buffer' },
          { name = 'path' },
          { name = 'luasnip' },
        }, {})
      })

      -- Rest of your configuration remains the same
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
    end
  }
}
