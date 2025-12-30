-- Using lazy.nvim
return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  config = function()
    -- Very desaturated gray for indent lines
    vim.api.nvim_set_hl(0, 'IblIndent', { fg = '#4a4a4a' })

    require('ibl').setup({
      indent = {
        char = '▏', -- or '▏', '┊', '┆'
        highlight = 'IblIndent',
      },
      scope = {
        enabled = false, -- Disable scope highlighting entirely
      },
      exclude = {
        filetypes = { 'help', 'terminal', 'dashboard' },
      },
    })

    -- Make indent line disappear under cursor
    vim.opt.cursorcolumn = false -- Ensure cursorcolumn is off

    -- Optional: if you want even more control
    vim.api.nvim_create_autocmd('CursorMoved', {
      callback = function()
        -- Lines naturally won't show under cursor with scope disabled
      end
    })
  end
}

-- char = '▏', -- or '▏', '┊', '┆'
-- tab_char = '▏',
