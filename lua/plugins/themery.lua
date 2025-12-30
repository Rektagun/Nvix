return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({

      themes = {
        'vscode',
        'gruvbox',
        'rose-pine-dawn',
        'rose-pine-moon',
        'rose-pine-main',
        'melange',
        'gruvbox-material',
        'cobalt2',
        'kanagawa-wave',
        'jellybeans-nvim',
        'kanagawa-lotus',
        'kanagawa-dragon'
      },

      livePreview = true, -- Apply theme while picking. Default to true.
    })
  end
}
