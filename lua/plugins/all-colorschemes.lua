return {
  {
    "lalitmee/cobalt2.nvim",
    event = { "ColorSchemePre" }, -- if you want to lazy load
    dependencies = { "tjdevries/colorbuddy.nvim", tag = "v1.0.0" },
    init = function()
      require("colorbuddy").colorscheme("cobalt2")
    end,
  },
  {
    "metalelf0/jellybeans-nvim",
    priority = 1000,
    config = function()
    end
  },
  {
    "sainnhe/gruvbox-material",
    priority = 1000,
    config = function()
    end
  },
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
      require('kanagawa').setup({
        undercurl = false,
        transparent = false,
      })
    end
  },
  {
    "savq/melange-nvim",
    priority = 1000,
    config = function()
    end
  },
  {
    "morhetz/gruvbox",
    priority = 1000,
    config = function()
    end
  },
  {
    "Mofiqul/vscode.nvim",
    priority = 1000,
    config = function()
      require('vscode').setup({
        bold = false,
        transparent = true,
      })
    end
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
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
        disable_background = true,

        styles = {
          bold = false,
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
        },

        highlight_groups = {
        },

        before_highlight = function(group, highlight, palette)
        end,
      })
    end
  }
}
