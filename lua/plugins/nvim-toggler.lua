return {
  {
    "nguyenvukhang/nvim-toggler",
    config = function()
      require('nvim-toggler').setup({
        -- your own inverses
        inverses = {
          ['=='] = '!=',
          ['vim'] = 'emacs',
          ['row'] = 'col',
          ['flex'] = 'grid',
          ['true'] = 'false',
          ['True'] = 'False',
          ['yes'] = 'no',
          ['black'] = 'white',
          ['on'] = 'off',
          ['On'] = 'Off',
          ['before'] = 'after',
          ['Before'] = 'After',
          ['left'] = 'right',
          ['up'] = 'down',
          ['Up'] = 'Down',
          ['top'] = 'bottom',
          ['Top'] = 'Bottom',
          ['in'] = 'out',
          ['In'] = 'Out',
          ['and'] = 'or',
          ['And'] = 'Or',
          ['AND'] = 'OR',
          ['light'] = 'dark',
          ['Light'] = 'Dark',
          ['sell'] = 'buy',
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
