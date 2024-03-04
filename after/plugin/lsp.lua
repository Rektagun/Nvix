-- local lsp_zero = require('lsp-zero')

-- require('mason').setup{}
-- require("mason-lspconfig").setup {
-- 	ensure_installed = { "lua_ls", "vimls", "tsserver", "clangd" },
-- }

-- local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- local lspconfig = require("lspconfig")
-- require('lspconfig').tsserver.setup({

-- 	single_file_support = false,
--   capabilities = capabilities,
--   inlayHints = {
-- 	  includeInlayParameterNameHints = "all",
-- 	  includeInlayParameterNameHintsWhenArgumentMatchesName = false,
-- 	  includeInlayFunctionParameterTypeHints = true,
-- 	  includeInlayVariableTypeHints = true,
-- 	  includeInlayPropertyDeclarationTypeHints = true,
-- 	  includeInlayFunctionLikeReturnTypeHints = true,
-- 	  includeInlayEnumMemberValueHints = true,
--   }
-- })

-- lsp_zero.on_attach(function(client, bufnr)
-- 	lsp_zero.default_keymaps({buffer = bufnr})
-- end)


-- require('lspconfig').lua_ls.setup({

-- 	single_file_support = true,
-- 	workspace = {
-- 		checkThirdParty = false,
-- 	},
-- 	completion = {
-- 		workspaceWord = true,
-- 		callSnippet = "Both",
-- 	},
-- 	misc = {
-- 		parameters = {
-- 			-- "--log-level=trace",
-- 		},
-- 	},
-- 	hint = {
-- 		enable = true,
-- 		setType = false,
-- 		paramType = true,
-- 		paramName = "Disable",
-- 		semicolon = "Disable",
-- 		arrayIndex = "Disable",
-- 	},
-- 	doc = {
-- 		privateName = { "^_" },
-- 	},
-- 	type = {
-- 		castNumberToInteger = true,
-- 	},
-- 	diagnostics = {
-- 		disable = { "incomplete-signature-doc", "trailing-space" },
-- 		-- enable = false,
-- 		groupSeverity = {
-- 			strong = "Warning",
-- 			strict = "Warning",
-- 		},
-- 		groupFileStatus = {
-- 			["ambiguity"] = "Opened",
-- 			["await"] = "Opened",
-- 			["codestyle"] = "None",
-- 			["duplicate"] = "Opened",
-- 			["global"] = "Opened",
-- 			["luadoc"] = "Opened",
-- 			["redefined"] = "Opened",
-- 			["strict"] = "Opened",
-- 			["strong"] = "Opened",
-- 			["type-check"] = "Opened",
-- 			["unbalanced"] = "Opened",
-- 			["unused"] = "Opened",
-- 		},
-- 		unusedLocalExclude = { "_*" },
-- 	},
-- 	format = {
-- 		enable = false,
-- 		defaultConfig = {
-- 			indent_style = "space",
-- 			indent_size = "2",
-- 			continuation_indent_size = "2",
-- 		},
-- 	},
-- }

-- require('lspconfig').clangd.setup({})

-- require('lspconfig').vimls.setup({

-- 	single_file_support = false,
-- 	capabilities = capabilities
-- })




-- Ensure that 'lsp-zero' is properly initialized if required. This initialization might depend on 'lsp-zero' itself,
-- but including a setup call here for clarity. Adjust according to 'lsp-zero's documentation.
require('lsp-zero').preset({})

-- Setup Mason which manages installation and updating of LSP servers, formatters, and linters.
require('mason').setup{}

-- Configure Mason LSP to automatically install some language servers.
require("mason-lspconfig").setup {
	ensure_installed = { "lua_ls", "vimls", "tsserver", "clangd" },
}

-- Using 'cmp_nvim_lsp' to enhance LSP server capabilities with autocompletion features.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Initialize 'lspconfig' which is a required module for setting up language servers.
local lspconfig = require("lspconfig")

-- Setting up TypeScript language server with specific configurations including disabling single file support
-- and providing inlay hints configuration.
lspconfig.tsserver.setup({
	single_file_support = false,
  	capabilities = capabilities,
	inlayHints = {
		includeInlayParameterNameHints = "all",
		includeInlayParameterNameHintsWhenArgumentMatchesName = false,
		includeInlayFunctionParameterTypeHints = true,
		includeInlayVariableTypeHints = true,
		includeInlayPropertyDeclarationTypeHints = true,
		includeInlayFunctionLikeReturnTypeHints = true,
		includeInlayEnumMemberValueHints = true,
	}
})

-- Setting up Lua language server with specific configurations beneficial for Lua development,
-- especially for Neovim configuration files.
lspconfig.lua_ls.setup({
	single_file_support = true,
	-- Ensure these settings match your project requirements and the Lua language server version
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

-- Setting up Clangd without additional configuration, assuming default settings work well.
lspconfig.clangd.setup({})

-- Setting up Vim language server, useful for editing VimScript.
lspconfig.vimls.setup({
	single_file_support = false,
	capabilities = capabilities
})

-- Note: In this script, the configuration for lsp-zero's on_attach and setup is presumed to be default or unnecessary
-- for explicit inclusion. If you require specific on_attach functionality, that configuration should be reviewed
-- and added as per the documentation or your custom needs.
