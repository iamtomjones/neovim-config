require("time-tracker").setup({
  data_file = vim.fn.stdpath("data") .. "/time-tracker.json",
  tracking_events = { "BufEnter", "BufWinEnter", "CursorMoved", "CursorMovedI", "WinScrolled" },
  tracking_timeout_seconds = 1 * 60, -- 1 minute
})
