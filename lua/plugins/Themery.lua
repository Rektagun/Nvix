return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({

      themes = {
        'vscode', 'rose-pine'
      },

      livePreview = true, -- Apply theme while picking. Default to true.
    })
  end
}
