return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-vsnip",
    "hrsh7th/vim-vsnip",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
  },

  config = function()
    require('mason').setup {}
    require("mason-lspconfig").setup {}

    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    local lspconfig = require("lspconfig")

    local htmlcapabilities = vim.lsp.protocol.make_client_capabilities()

    capabilities.textDocument.completion.completionItem.snippetSupport = true

    lspconfig.eslint.setup({
      single_file_support = true,
      capabilities = capabilities,
      ft = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx", "vue", "svelte", "astro" },
      on_attach = function(client, bufnr)
        vim.api.nvim_create_autocmd("BufWritePre", {
          buffer = bufnr,
          command = "EslintFixAll",
        })
      end,
    })


    lspconfig.emmet_language_server.setup {
      single_file_support = true,
      capabilities = capabilities,
      ft = { "css", "eruby", "html", "htmldjango", "javascriptreact", "less", "pug", "sass", "scss", "typescriptreact", "htmlangular" }
    }


    lspconfig.emmet_ls.setup {
      single_file_support = true,
      capabilities = capabilities,
      ft = { "css", "eruby", "html", "htmldjango", "javascriptreact", "less", "pug", "sass", "scss", "typescriptreact", "htmlangular" }
    }


    lspconfig.bashls.setup {
      single_file_support = true,
      capabilities = capabilities,
    }

    lspconfig.tailwindcss.setup({
      single_file_support = true,
      capabilities = capabilities,
    })

    lspconfig.html.setup {
      capabilities = htmlcapabilities,
      single_file_support = true,
    }

    lspconfig.cssls.setup {
      single_file_support = true,
      capabilities = capabilities,
    }

    lspconfig.ts_ls.setup {
      single_file_support = true,
      capabilities = capabilities,
      ft = { "css", "eruby", "html", "htmldjango", "javascriptreact", "less", "pug", "sass", "scss", "typescriptreact", "htmlangular" }
    }

    lspconfig.lua_ls.setup({
      single_file_support = true,
      capabilities = capabilities
    })

    lspconfig.vimls.setup({
      single_file_support = true,
      capabilities = capabilities
    })
  end
}
