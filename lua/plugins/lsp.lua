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
    require("mason-lspconfig").setup {
      ensure_installed = { "bashls", "clangd", "cssls", "cssmodules_ls", "css_variables", "cypher_ls", "docker_compose_language_service", "dockerls", "eslint", "grammarly", "graphql", "jsonls", "lua_ls", "nextls", "pylsp", "pyright", "tailwindcss", "ts_ls", "vimls" }, }
    vim.lsp.config("*", {
      vim.diagnostic.config({
        virtual_text = true,
      })
    })
    vim.lsp.enable({
      "bashls",
      "clangd",
      "csharp_ls",
      "cssls",
      "cssmodules_ls",
      "css_variables",
      -- "emmet_language_server",
      "cypher_ls",
      "docker_compose_language_service",
      "dockerls",
      "eslint",
      "grammarly",
      "graphql",
      "jsonls",
      "lua_ls",
      "nextls",
      "pylsp",
      "pyright",
      "tailwindcss",
      "ts_ls",
      "vimls",
    })
  end
}
