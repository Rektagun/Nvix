-- Attaches to every FileType mode
require 'colorizer'.setup()

-- Attach to certain Filetypes, add special configuration for `html`
-- Use `background` for everything else.
require 'colorizer'.setup {
    'lua';
    'vim',
    'css';
    'javascript';
    html = {
        mode = 'foreground';
    }
}
-- Use the `default_options` as the second parameter, which uses
-- `foreground` for every mode. This is the inverse of the previous
-- setup configuration.
require 'colorizer'.setup {
    '*'; -- Highlight all files, but customize some others.
    lua = {},
    vim = {},
    css = { rgb_fn = true; }; -- Enable parsing rgb(...) functions in css.
    html = { names = true; } -- Disable parsing "names" like Blue or Gray
}


