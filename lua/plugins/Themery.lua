return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({

      themes = { 'rose-pine',
        'gruvbox',
        'ayu', 'tokyonight',
        'catppuccin-mocha',
        'gruvbox-material', 'meh', 'kanagawa', 'kanagawa-paper', 'rasmus', 'evergarden', 'newpaper', 'material',
        'monochrome', 'everforest', 'aquarium', 'dark_plus', 'inkstained', 'mellifluous', 'miasma', 'chocolatier',
        'polar', 'nefertiti', 'blossom', 'skull', 'eink', 'minicyan', 'minischeme', 'neogruvbox', 'gruvsquirrel',
        'clear_colors_dark', 'clear_colors_light',
        -- 'night-coder',
        'ceudah', 'seoul256', 'vacme', 'posterpole', 'posterpole-term', 'bubblegum-256-dark', 'bubblegum-256-light',
        'atlas', 'juliana', 'yugen', 'sacredforest', 'deepwhite', 'despacio', 'aylin', 'paper', 'vague', 'off',
        'substrata', 'distinguished', 'fogbell', 'monotone', 'oceanic_material', 'gruvbox-flat', 'miramare',
        -- 'flow',
        'Tomorrow-Night',
        'Tomorrow-Night-Blue',
        'Tomorrow-Night-Bright',
        'Tomorrow-Night-Eighties',
        'spring-night', 'bamboo',
        -- 'darcula',
        'alduin', 'gruvbox8', 'hybrid_material', 'vscode', 'srcery', 'apprentice', 'sourcerer', 'envy', 'cake16', 'leaf',
        'gruvbit',
        -- 'kimbox',
        'falcon', 'oxocarbon', 'vitaminonec', 'vwilight', 'flatland', 'predawn', 'twilight', 'plan9', 'codesmell_dark',
        'oldworld', },

      livePreview = true, -- Apply theme while picking. Default to true.
    })
  end
}
