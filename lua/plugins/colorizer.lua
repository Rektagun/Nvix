return {
  {
    "norcalli/nvim-colorizer.lua",
    config = function ()
      require 'colorizer'.setup {
        'css';
        'javascript';
        'lua';
        'vim';
        html = {
          mode = 'foreground';
        }
      }
    end
  },
}
