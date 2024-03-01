vim.cmd [[packadd packer.nvim]]
require('packer').startup(function()
    use {'wbthomason/packer.nvim', opt = true}
-- use {

-- disable netrw at the very start of your init.lua
-- end)
-- Initialize Packer
-- require('packer').startup(function()
    -- Packer package manager
    use 'wbthomason/packer.nvim'

    -- Add nvterm plugin
    use 'nvim-lua/nvterm.nvim'
end)
-- Minimal config
-- init.lua
vim.g.coc_global_extensions = { 'coc-java' }
-- lua (init.lua)
vim.cmd [[highlight MyHighlightGroup guibg=blue gui=None]]

require("themery").setup({
  themes = {"gruvbox", "ayu"}, -- Your list of installed colorschemes
  -- themeConfigFile = "~/.config/nvim/lua/theme.lua", -- Described below

  themeConfigFile = "~/.config/nvim/lua/theme.lua", -- Described below
  livePreview = true, -- Apply theme while browsing. Default to true.
})
require'lspconfig'.clangd.setup{}

require('gitsigns').setup{}

-- require("nvterm").setup({
--   terminals = {
--     shell = vim.o.shell,
--     list = {},
--     type_opts = {
--       float = {
--         relative = 'editor',
--         row = 0.3,
--         col = 0.25,
--         width = 0.5,
--         height = 0.4,
--         border = "single",
--       },
--       horizontal = { location = "rightbelow", split_ratio = .3, },
--       vertical = { location = "rightbelow", split_ratio = .5 },
--     }
--   },
--   behavior = {
--     autoclose_on_quit = {
--       enabled = false,
--       confirm = true,
--     },
--     close_on_exit = true,
--     auto_insert = true,
--   },
-- })

-- vim.cmd('set background=' .. vim.fn.system('$TERM_BACKGROUND'):gsub('\n', ''))


-- require("noice").setup({
--   lsp = {
--     -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
--     override = {
--       ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
--       ["vim.lsp.util.stylize_markdown"] = true,
--       ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
--     },
--   },
--   -- you can enable a preset for easier configuration
--   presets = {
--     bottom_search = true, -- use a classic bottom cmdline for search
--     command_palette = true, -- position the cmdline and popupmenu together
--     long_message_to_split = true, -- long messages will be sent to a split
--     inc_rename = false, -- enables an input dialog for inc-rename.nvim
--     lsp_doc_border = false, -- add a border to hover docs and signature help
--   },
-- })


require'lspconfig'.lua_ls.setup {
  on_init = function(client)
    local path = client.workspace_folders[1].name
    if not vim.loop.fs_stat(path..'/.luarc.json') and not vim.loop.fs_stat(path..'/.luarc.jsonc') then
      client.config.settings = vim.tbl_deep_extend('force', client.config.settings, {
        Lua = {
          runtime = {
            -- Tell the language server which version of Lua you're using
            -- (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT'
          },
          -- Make the server aware of Neovim runtime files
          workspace = {
            checkThirdParty = false,
            library = {
              vim.env.VIMRUNTIME
              -- Depending on the usage, you might want to add additional paths here.
              -- E.g.: For using `vim.*` functions, add vim.env.VIMRUNTIME/lua.
              -- "${3rd}/luv/library"
              -- "${3rd}/busted/library",
            }
            -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
            -- library = vim.api.nvim_get_runtime_file("", true)
          }
        }
      })
    end
    return true
  end
}



vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- require(config.nvim.after.plugin.colors)
-- optionally enable 24-bit colour
vim.opt.termguicolors = true

