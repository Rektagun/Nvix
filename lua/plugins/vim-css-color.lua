return {
  {
    "ap/vim-css-color" ,
    config = function()
      local wilder = require('wilder')
      wilder.setup({modes = {':', '/', '?'}})
    end
  }
}
