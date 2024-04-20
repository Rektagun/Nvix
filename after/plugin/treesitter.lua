require("nvim-treesitter.configs").setup({
	-- A list of parser names, or "all"
	ensure_installed = "all",
		-- {
		-- "css",
		-- "vim",
        -- "kotlin",
        -- "java",
        -- "json",
        -- "html",
		-- "vimdoc", 
		-- "javascript", 
		-- "c", 
		-- "lua",
		-- "jsdoc", 
		-- "bash",
      -- },
	--
	autotag = { 
		enable = true,
	-- update_on_insert = true,
	},
	

	incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
	},

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = true,

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don"t have `tree-sitter` CLI installed locally
	auto_install = true,

	indent = { enable = true },

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = { "markdown" },
	},
})
local treesitter_parser_config = require("nvim-treesitter.parsers").get_parser_configs()
treesitter_parser_config.templ = {
	install_info = {
		url = "https://github.com/vrischmann/tree-sitter-templ.git",
		files = {"src/parser.c", "src/scanner.c"},
		branch = "master",
	},
}

vim.treesitter.language.register("templ", "templ")
