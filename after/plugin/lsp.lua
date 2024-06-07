require('lsp-zero').preset({})

require('mason').setup{}

require("mason-lspconfig").setup {
  ensure_installed = {
    "gopls",
    "tsserver",
    "clangd",
    "cssls",
    "vimls",
    "kotlin_language_server",
    "jdtls",
    "emmet_ls",
    "lua_ls",
    "jsonls",
    "html",
    "tailwindcss",
    "bashls",
  },

}



local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require("lspconfig")

capabilities.textDocument.completion.completionItem.snippetSupport = true


-- lspconfig.gopls.setup {
--     -- single_file_support = true,
--     single_file_support = true,
--     capabilities = capabilities,
-- }

lspconfig.bashls.setup {
  -- single_file_support = true,
  single_file_support = true,
  capabilities = capabilities,
}

lspconfig.tailwindcss.setup ({
 settings =  {
    tailwindCSS = {
      classAttributes = { "class", "className", "class:list", "classList", "ngClass" },
      lint = {
        cssConflict = "warning",
        invalidApply = "error",
        invalidConfigPath = "error",
        invalidScreen = "error",
        invalidTailwindDirective = "error",
        invalidVariant = "error",
        recommendedVariantOrder = "warning"
      },
      validate = true
    }
  },
  single_file_support = true,
  capabilities = capabilities,
})

lspconfig.kotlin_language_server.setup {
  -- single_file_support = true,
  single_file_support = true,
  capabilities = capabilities,
}

lspconfig.html.setup {
  -- single_file_support = true,
  single_file_support = true,
  capabilities = capabilities,
}

lspconfig.cssls.setup {
  -- single_file_support = true,
  single_file_support = true,
  capabilities = capabilities,
}

lspconfig.gopls.setup({
  single_file_support = true,
  capabilities = capabilities,
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
      gofumpt = true,
    },
  },
})

lspconfig.kotlin_language_server.setup{
  single_file_support = true,
  capabilities = capabilities,
}

lspconfig.tsserver.setup{
  single_file_support = true,
  capabilities = capabilities,
}

lspconfig.pyright.setup({
  single_file_support = true,
  capabilities = capabilities,
})

lspconfig.lua_ls.setup({
  -- single_file_support = false,
  single_file_support = true,
  settings = {
    Lua = {
      workspace = {
        checkThirdParty = false,
      },
      completion = {
        workspaceWord = true,
        callSnippet = "Replace",
      },
      diagnostics = {
        disable = { "incomplete-signature-doc", "trailing-space" },
        unusedLocalExclude = { "_*" },
      }, 
      format = {
        enable = true,
      },
    },
  },
})

lspconfig.jdtls.setup({
  -- single_file_support = false,
  single_file_support = true,
  capabilities = capabilities
})

lspconfig.clangd.setup({
  -- single_file_support = false,
  single_file_support = true,
  capabilities = capabilities
})

lspconfig.vimls.setup({
  -- single_file_support = false,
  single_file_support = true,
  capabilities = capabilities
})
