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
    require('mason').setup{}
    require("mason-lspconfig").setup {
      ensure_installed = {
        "ts_ls",
        "clangd",
        "cssls",
        "vimls",
        "jdtls",
        "cypher_ls",
        "graphql",
        "emmet_ls",
        "lua_ls",
        "jsonls",
        "html",
        "tailwindcss",
        "pyright",
        "bashls",
      },
    }

    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    local lspconfig = require("lspconfig")

    capabilities.textDocument.completion.completionItem.snippetSupport = true

    require'lspconfig'.csharp_ls.setup{}

    lspconfig.graphql.setup {
      single_file_support = true,
      capabilities = capabilities,
    }

    lspconfig.cypher_ls.setup {
      single_file_support = true,
      capabilities = capabilities,
    }

    lspconfig.bashls.setup {
      single_file_support = true,
      capabilities = capabilities,
    }

    lspconfig.tailwindcss.setup ({
      single_file_support = true,
      capabilities = capabilities,
    })

    lspconfig.html.setup {
      single_file_support = true,
      capabilities = capabilities,
    }

    lspconfig.cssls.setup {
      single_file_support = true,
      capabilities = capabilities,
    }

    lspconfig.kotlin_language_server.setup{
      single_file_support = true,
      capabilities = capabilities,
    }

    lspconfig.ts_ls.setup{
      single_file_support = true,
      capabilities = capabilities,
    }

    lspconfig.pyright.setup({
      single_file_support = true,
      capabilities = capabilities,
    })

    lspconfig.lua_ls.setup({
      single_file_support = true,
      capabilities = capabilities
    })

    lspconfig.jdtls.setup({
      single_file_support = true,
      capabilities = capabilities
    })

    lspconfig.clangd.setup({
      single_file_support = true,
      capabilities = capabilities
    })

    lspconfig.vimls.setup({
      single_file_support = true,
      capabilities = capabilities
    })

  end
}
