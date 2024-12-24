return {
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup {
        check_ts = true, -- Enable treesitter integration
        ts_config = {
          lua = {'string'},-- don't add pairs in lua string treesitter nodes
          javascript = {'template_string'},
          java = false,-- don't check treesitter on java
        }
      }
      -- If you want to automatically add `(` after select functions, feel free to uncomment the following
      local npairs = require("nvim-autopairs")
      local Rule = require('nvim-autopairs.rule')
      local ts_conds = require('nvim-autopairs.ts-conds')
    end
  }
}
