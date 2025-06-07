return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({

      themes = { 'rose-pine-moon', 'rose-pine-main', 'ayu', 'gruvbox', 'kanagawa-wave', 'kanagawa-dragon', 'gruvbox-material', 'melange' },

      livePreview = true, -- Apply theme while picking. Default to true.
    })
  end
}
