return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      require("rose-pine").setup({
        variant = "auto",      -- auto, main, moon, or dawn
        dark_variant = "main", -- main, moon, or dawn
        dim_inactive_windows = false,
        extend_background_behind_borders = true,

        enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = true,        -- Handle deprecated options automatically
        },

        styles = {
          bold = true,
          italic = true,
          transparency = true,
        },

        groups = {
          border = "muted",
          link = "iris",
          panel = "surface",

          error = "love",
          hint = "iris",
          info = "foam",
          note = "pine",
          todo = "rose",
          warn = "gold",

          git_add = "foam",
          git_change = "rose",
          git_delete = "love",
          git_dirty = "rose",
          git_ignore = "muted",
          git_merge = "iris",
          git_rename = "pine",
          git_stage = "iris",
          git_text = "rose",
          git_untracked = "subtle",

          h1 = "iris",
          h2 = "foam",
          h3 = "rose",
          h4 = "gold",
          h5 = "pine",
          h6 = "foam",
        },

        palette = {
          -- Override the builtin palette per variant
          -- moon = {
          --     base = '#18191a',
          --     overlay = '#363738',
          -- },
        },

        highlight_groups = {
          -- Comment = { fg = "foam" },
          -- VertSplit = { fg = "muted", bg = "muted" },
        },

        before_highlight = function(group, highlight, palette)
          -- Disable all undercurls
          -- if highlight.undercurl then
          --     highlight.undercurl = false
          -- end
          --
          -- Change palette colour
          -- if highlight.fg == palette.pine then
          --     highlight.fg = palette.foam
          -- end
        end,
      })
    end
  },
  -- { 'ellisonleao/gruvbox.nvim',            config = function() end },
  { 'Luxed/ayu-vim',                       name = 'ayu',              config = function() end },
  { 'folke/tokyonight.nvim',               name = 'tokyonight',       config = function() end },
  { 'catppuccin/nvim',                     name = 'catppuccin',       config = function() end },
  { 'sainnhe/gruvbox-material',            name = 'gruvbox-material', config = function() end },
  { 'davidosomething/vim-colors-meh',      name = 'meh',              config = function() end },
  { 'rebelot/kanagawa.nvim',               name = 'kanagawa',         config = function() end },
  -- { 'sho-87/kanagawa-paper.nvim',          name = 'kanagawa-paper',   config = function() end },
  { 'kvrohit/rasmus.nvim',                 name = 'rasmus',           config = function() end },
  { 'comfysage/evergarden',                name = 'evergarden',       config = function() end },
  { 'yorik1984/newpaper.nvim',             name = 'newpaper',         config = function() end },
  { 'marko-cerovac/material.nvim',         name = 'material',         config = function() end },
  { 'kdheepak/monochrome.nvim',            name = 'monochrome',       config = function() end },
  { 'sainnhe/everforest',                  name = 'everforest',       config = function() end },
  { 'FrenzyExists/aquarium-vim',           name = 'aquarium',         config = function() end },
  { 'dunstontc/vim-vscode-theme',          name = 'dark_plus',        config = function() end },
  { 'yuttie/inkstained-vim',               name = 'inkstained',       config = function() end },
  { 'ramojus/mellifluous.nvim',            name = 'mellifluous',      config = function() end },
  { 'xero/miasma.nvim',                    name = 'miasma',           config = function() end },
  { 'qaptoR-nvim/chocolatier.nvim',        name = 'chocolatier',      config = function() end },
  { 'habamax/vim-polar',                   name = 'polar',            config = function() end },
  { 'jeetsukumaran/vim-nefertiti',         name = 'nefertiti',        config = function() end },
  { 'rayes0/blossom.vim',                  name = 'blossom',          config = function() end },
  { 'kxzk/skull-vim',                      name = 'skull',            config = function() end },
  { 'clinstid/eink.vim',                   name = 'eink',             config = function() end },
  { 'echasnovski/mini.base16',             name = 'mini.base16',      config = function() end },
  { 'almo7aya/neogruvbox.nvim',            name = 'neogruvbox',       config = function() end },
  { 'mikesmithgh/gruvsquirrel.nvim',       name = 'gruvsquirrel',     config = function() end },
  { 'alxhnr/clear_colors',                 name = 'clear_colors',     config = function() end },
  -- { 'a5hk/night-coder', name = 'night-coder', config = function() end },
  { 'emhaye/ceudah.vim',                   name = 'ceudah',           config = function() end },
  { 'junegunn/seoul256.vim',               name = 'seoul256',         config = function() end },
  { 'overvale/vacme',                      name = 'vacme',            config = function() end },
  { 'ilof2/posterpole.nvim',               name = 'posterpole',       config = function() end },
  { 'baskerville/bubblegum',               name = 'bubblegum',        config = function() end },
  { 'huyvohcmc/atlas.vim',                 name = 'atlas',            config = function() end },
  { 'kaiuri/nvim-juliana',                 name = 'juliana',          config = function() end },
  { 'bettervim/yugen.nvim',                name = 'yugen',            config = function() end },
  { 'karoliskoncevicius/sacredforest-vim', name = 'sacredforest',     config = function() end },
  { 'verf/deepwhite.nvim',                 name = 'deepwhite',        config = function() end },
  { 'alessandroyorba/despacio',            name = 'despacio',         config = function() end },
  { 'ahmedabdulrahman/aylin.vim',          name = 'aylin',            config = function() end },
  { 'yorickpeterse/vim-paper',             name = 'paper',            config = function() end },
  -- { 'mswift42/vim-themes', name = 'themes', config = function() end },
  { 'vague2k/vague.nvim',                  name = 'vague',            config = function() end },
  { 'pbrisbin/vim-colors-off',             name = 'off',              config = function() end },
  { 'lunacookies/vim-substrata',           name = 'substrata',        config = function() end },
  { 'lokaltog/vim-distinguished',          name = 'distinguished',    config = function() end },
  { 'jaredgorski/fogbell.vim',             name = 'fogbell',          config = function() end },
  { 'lokaltog/vim-monotone',               name = 'monotone',         config = function() end },
  { 'nvimdev/oceanic-material',            name = 'oceanic_material', config = function() end },
  { 'eddyekofo94/gruvbox-flat.nvim',       name = 'gruvbox-flat',     config = function() end },
  { 'franbach/miramare',                   name = 'miramare',         config = function() end },
  -- { '0xstepit/flow.nvim', name = 'flow', config = function() end },
  { 'chriskempson/vim-tomorrow-theme',     name = 'tomorrow',         config = function() end },
  { 'rhysd/vim-color-spring-night',        name = 'spring-night',     config = function() end },
  { 'ribru17/bamboo.nvim',                 name = 'bamboo',           config = function() end },
  -- { 'doums/darcula', name = 'darcula', config = function() end },
  { 'alessandroyorba/alduin',              name = 'alduin',           config = function() end },
  { 'lifepillar/vim-gruvbox8',             name = 'gruvbox8',         config = function() end },
  { 'kristijanhusak/vim-hybrid-material',  name = 'hybrid_material',  config = function() end },
  { 'mofiqul/vscode.nvim',                 name = 'vscode',           config = function() end },
  { 'srcery-colors/srcery-vim',            name = 'srcery',           config = function() end },
  { 'romainl/apprentice',                  name = 'apprentice',       config = function() end },
  { 'xero/sourcerer.vim',                  name = 'sourcerer',        config = function() end },
  { 'kkga/vim-envy',                       name = 'envy',             config = function() end },
  { 'zefei/cake16',                        name = 'cake16',           config = function() end },
  { 'daschw/leaf.nvim',                    name = 'leaf',             config = function() end },
  { 'habamax/vim-gruvbit',                 name = 'gruvbit',          config = function() end },
  -- { 'lmburns/kimbox', name = 'kimbox', config = function() end },
  { 'fenetikm/falcon',                     name = 'falcon',           config = function() end },
  { 'nyoom-engineering/oxocarbon.nvim',    name = 'oxocarbon',        config = function() end },
  { 'gkapfham/vim-vitamin-onec',           name = 'vitaminonec',      config = function() end },
  { 'jaywilliams/vim-vwilight',            name = 'vwilight',         config = function() end },
  { 'vivkin/flatland.vim',                 name = 'flatland',         config = function() end },
  { 'juanedi/predawn.vim',                 name = 'predawn',          config = function() end },
  { 'scttymn/vim-twilight',                name = 'twilight',         config = function() end },
  { 'lunacookies/vim-plan9',               name = 'plan9',            config = function() end },
  { 'whatsthatsmell/codesmell_dark.vim',   name = 'codesmell_dark',   config = function() end },
  { 'dgox16/oldworld.nvim',                name = 'oldworld',         config = function() end },
}
