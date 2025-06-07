return {
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup {
        ensure_installed = { 
          "bashls",
          "clangd",
          "csharp_ls",
          "cssls",
          "cssmodules_ls",
          "css_variables",
          "cypher_ls",
          "docker_compose_language_service",
          "dockerls",
          "emmet_language_server",
          "emmet_ls",
          "eslint",
          "grammarly",
          "graphql",
          "html",
          "jsonls",
          "lua_ls",
          "nextls",
          "pylsp",
          "pyright",
          "tailwindcss",
          "ts_ls",
          "vimls",
        },
      }
    end
  }
}


