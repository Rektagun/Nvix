return {
  { "sainnhe/gruvbox-material", name = "gruvbox-material", priority = 1000 },
  { "savq/melange-nvim",        name = "melange",          priority = 1000 },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      require("rose-pine").setup({
        variant = "auto",      -- auto, main, moon, or dawn
        dark_variant = "main", -- main, moon, or dawn
        styles = {
          bold = false,
          transparency = true,
        },
      })
    end
  },
  {
    'ellisonleao/gruvbox.nvim',
    config = function()
      require("gruvbox").setup({
        terminal_colors = true, -- add neovim terminal colors
        bold = false,
        transparent_mode = true,
      })
    end
  },
  {
    'Shatur/neovim-ayu',
    config = function()
      require('ayu').setup({
      })
    end
  },
  {
    'rebelot/kanagawa.nvim',
    config = function()
      require('kanagawa').setup({
        transparent = true, -- do not set background color
      })
    end
  },

}
