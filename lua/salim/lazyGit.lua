return {
  Floating_lazygit = function()
    local buf = vim.api.nvim_create_buf(false, true)
    local width = math.ceil(vim.o.columns * 0.8)
    local height = math.ceil(vim.o.lines * 0.8)

    local win = vim.api.nvim_open_win(buf, true, {
      style = "minimal",
      relative = "editor",
      width = width,
      height = height,
      row = math.ceil((vim.o.lines - height) / 2),
      col = math.ceil((vim.o.columns - width) / 2),
    })

    vim.fn.jobstart("lazygit", {
      term = true,
      on_exit = function()
        if vim.api.nvim_win_is_valid(win) then
          vim.api.nvim_win_close(win, true)
        end
      end,
    })

    vim.cmd("startinsert")
    vim.keymap.set("n", "q", "<cmd>close!<CR>", {
      buffer = buf,
      noremap = true,
      silent = true,
    })
  end,
}
