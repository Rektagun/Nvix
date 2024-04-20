require('lsp-zero').preset({})

require('mason').setup{}

require("mason-lspconfig").setup {
	ensure_installed = {
		"tsserver",
		"clangd",
		"cssls",
		"vimls",
		-- "eslint_lsp",
		-- "eslint_d",
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

--lspconfig.emmet_language_server.setup({
--  filetypes = { "css", "html", "javascript", "javascriptreact" },
--  init_options = {
--    ---@type table<string, string>
--    includeLanguages = {},
--    --- @type string[]
--    excludeLanguages = {},
--    --- @type string[]
--    extensionsPath = {},
--    --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/preferences/)
--    preferences = {},
--    --- @type boolean Defaults to `true`
--    showAbbreviationSuggestions = false,
--    --- @type "always" | "never" Defaults to `"always"`
--    showExpandedAbbreviation = "never",
--    --- @type boolean Defaults to `false`
--    showSuggestionsAsSnippets = false,
--    --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/syntax-profiles/)
--    syntaxProfiles = {},
--    --- @type table<string, string> [Emmet Docs](https://docs.emmet.io/customization/snippets/#variables)
--    variables = {},
--  },
--})

--require'lspconfig'.emmet_ls.setup {
--	capabilities = capabilities,
--}

require'lspconfig'.bashls.setup {
  capabilities = capabilities,
}

require'lspconfig'.kotlin_language_server.setup {
  capabilities = capabilities,
}

require'lspconfig'.html.setup {
  capabilities = capabilities,
}

require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}

require'lspconfig'.kotlin_language_server.setup{}

lspconfig.tsserver.setup({
	single_file_support = true,
  	capabilities = capabilities,
	inlayHints = {
		includeInlayParameterNameHints = "all",
		includeInlayParameterNameHintsWhenArgumentMatchesName = true,
		includeInlayFunctionParameterTypeHints = true,
		includeInlayVariableTypeHints = true,
		includeInlayPropertyDeclarationTypeHints = true,
		includeInlayFunctionLikeReturnTypeHints = true,
		includeInlayEnumMemberValueHints = true,
	}
})

lspconfig.pyright.setup({})

lspconfig.lua_ls.setup({
	single_file_support = true,
	settings = {
		Lua = {
			workspace = {
				checkThirdParty = false,
			},
			completion = {
				workspaceWord = true,
				callSnippet = "Both",
			},
			diagnostics = {
				disable = { "incomplete-signature-doc", "trailing-space" },
				unusedLocalExclude = { "_*" },
			},
			format = {
				enable = false,
			},
		},
	},
})

lspconfig.jdtls.setup({})

lspconfig.clangd.setup({})

lspconfig.vimls.setup({
	single_file_support = true,
	capabilities = capabilities
})


