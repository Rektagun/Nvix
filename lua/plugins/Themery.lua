return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({

      themes = { 'rose-pine-moon', 'rose-pine-main', 'rose-pine-dawn', 'ayu', 'gruvbox', 'kanagawa-wave', 'kanagawa-dragon', 'kanagawa-lotus', 'gruvbox-material' },

      livePreview = true, -- Apply theme while picking. Default to true.
    })
  end
}
