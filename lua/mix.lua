local M = {}

function M.show_popup()
    -- 1. Create a scratch buffer, non listed that you can't open in a normal window
    local buf = vim.api.nvim_create_buf(false, true)
    -- 2. Fill the buffer with some long text
	vim.api.nvim_buf_set_lines(buf, 0, -1, false, { 
		'					~Mapix~					',
		'',
		'',
		'',
		'',
		'',
		'',
		'',
		'',
        'Explorer (NvimTree)			-> <Leader>e',
        'Termimal						-> <Leader>t',
	})

  
    -- 3. Calculate window size
    local width = vim.api.nvim_get_option("columns")
    local height = vim.api.nvim_get_option("lines")

    local win_height = math.ceil(height * 0.6 - 4)
    local win_width = math.ceil(width * 0.6)

    local row = math.ceil((height - win_height) / 2 - 1)
    local col = math.ceil((width - win_width) / 2)

    -- 4. Create a centered floating window. Set its buffer to our scratch buffer
    local opts = {
        style = "minimal",
        relative = "editor",
        width = win_width,
        height = win_height,
        row = row,
        col = col,
    }
    local win = vim.api.nvim_open_win(buf, true, opts)

    -- 5. Set some options in our window
    vim.api.nvim_win_set_option(win, 'cursorline', true)
	vim.api.nvim_buf_set_option(buf, 'modifiable', false)
    -- 6. Map keys in normal mode in our new buffer
    local mappings = {
        ['q'] = 'close_window()',
        ['j'] = 'scroll_down()',
        ['k'] = 'scroll_up()',
    }
    for k,v in pairs(mappings) do
        vim.api.nvim_buf_set_keymap(buf, 'n', k, ':lua require("mix").'..v..'<cr>', { nowait = true, silent = true, noremap = true })
    end
end


-- Scroll down and up within the buffer
function M.scroll_down()
    vim.api.nvim_command('normal! j')
end

function M.scroll_up()
    vim.api.nvim_command('normal! k')
end

-- Close the window and delete the buffer
function M.close_window()
    local buf = vim.api.nvim_get_current_buf()
    local win = vim.api.nvim_get_current_win()
    vim.api.nvim_win_close(win, true)
    vim.api.nvim_buf_delete(buf, { force = true })
end

return M

