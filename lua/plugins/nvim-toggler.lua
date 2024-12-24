return {
  {
    "nguyenvukhang/nvim-toggler",
    config = function()
      require('nvim-toggler').setup({
        -- your own inverses
        inverses = {
          ['vim'] = 'emacs',
          ['true'] = 'false',
          ['yes'] = 'no',
          ['black'] = 'white',
          ['on'] = 'off',
          ['left'] = 'right',
          ['up'] = 'down',
          ['=='] = '!=',
          ['True'] = 'False',
          ['top'] = 'bottom',
        },
        -- removes the default <leader>i keymap
        remove_default_keybinds = true,
        -- removes the default set of inverses
        remove_default_inverses = true,
        -- auto-selects the longest match when there are multiple matches
        autoselect_longest_match = false
      })
      vim.keymap.set({ 'n', 'v' }, '<leader>i', require('nvim-toggler').toggle)
    end
  },
}
