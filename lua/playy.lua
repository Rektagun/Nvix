-- pomodoro.lua

local Popup = require("plenary.window.float")
local Timer = Popup:extend("Timer")

function Timer:init(popup_options)
  local options = vim.tbl_deep_extend("force", popup_options or {}, {
    border = "double",
    focusable = false,
    position = { row = 0, col = "100%" },
    size = { width = 10, height = 1 },
    win_options = {
      winhighlight = "Normal:Normal,FloatBorder:SpecialChar",
    },
  })

  Timer.super.init(self, options)
end

function Timer:countdown(time, step, format)
  local function draw_content(text)
    local gap_width = 10 - vim.api.nvim_strwidth(text)
    vim.api.nvim_buf_set_lines(self.bufnr, 0, -1, false, {
      string.format(
        "%s%s%s",
        string.rep(" ", math.floor(gap_width / 2)),
        text,
        string.rep(" ", math.ceil(gap_width / 2))
      ),
    })
  end

  self:mount()
  local remaining_time = time

  draw_content(format(remaining_time))

  vim.fn.timer_start(step, function()
    remaining_time = remaining_time - step
    draw_content(format(remaining_time))
    if remaining_time <= 0 then
      self:unmount()
    end
  end, { ["repeat"] = math.ceil(remaining_time / step) })
end

local pomodoro_duration = 25 * 60 -- 25 minutes in seconds
local timer = Timer()

local function start_pomodoro()
  timer:countdown(pomodoro_duration * 1000, 1000, function(time)
    local minutes = math.floor(time / 60000)
    local seconds = math.floor((time % 60000) / 1000)
    return string.format("%02d:%02d", minutes, seconds)
  end)
end

local function stop_pomodoro()
  timer:unmount()
end

-- Define Neovim commands
vim.api.nvim_create_user_command("PomoStart", start_pomodoro, {})
vim.api.nvim_create_user_command("PomoStop", stop_pomodoro, {})
