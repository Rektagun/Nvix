function ColorMyPencils(color) 

  require("gruvbox").setup({
    terminal_colors = true, -- add neovim terminal colors
    undercurl = false,
    underline = false,
    bold = true,
    italic = {
      strings = false,
      emphasis = false,
      comments = false,
      operators = false,
      folds = false,
    },
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = " ", -- can be "hard", "soft" or empty string
    overrides = {},
    dim_inactive = false,
    transparent_mode = true,
  })

  -- require("tokyonight").setup({
  --     style = "night",
  --     transparent = false,
  --     terminal_colors = true,
  --     styles = {
  --         comments = { italic = false },
  --         keywords = { italic = false },
  --         sidebars = "dark",
  --         floats = "dark",
  --     },
  -- })

  require('rose-pine').setup({
    variant = "auto", -- auto, main, moon, or dawn
    dark_variant = "main", -- main, moon, or dawn
    --   dim_inactive_windows = false,
    extend_background_behind_borders = false,
    underline = false,

    enable = {
      underline = false,
      terminal = true,
      legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
      migrations = true, -- Handle deprecated options automatically
    },

    styles = {
      bold = true,
      italic = false,
      transparency = true,
    },

    groups = {
      border = "muted",
      link = "iris",
      panel = "subtle",


      error = "love",
      hint = "iris",
      info = "foam",
      note = "pine",
      todo = "rose",
      warn = "rose",

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
  })

  vim.o.background = "dark"
  -- vim.o.background = "light"

  -- vim.cmd("colorscheme ayu")
  vim.cmd("colorscheme gruvbox")
  -- vim.cmd("colorscheme rose-pine")

end
ColorMyPencils()


-- vim.cmd("colorscheme rose-pine")
-- vim.cmd('colorscheme meh')
-- vim.cmd('colorscheme ayu')
-- vim.cmd('colorscheme tender')
-- vim.cmd('colorscheme gruvbox')
-- vim.cmd('AirlineTheme gruvbox')
