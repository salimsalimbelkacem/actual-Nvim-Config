return {
    Floating_lazygit = function ()
        local buf = vim.api.nvim_create_buf(false, true)
        local width = math.ceil(vim.o.columns * 0.8)
        local height = math.ceil(vim.o.lines * 0.8)
        local opts = {
            style = "minimal",
            relative = "editor",
            width = width,
            height = height,
            row = math.ceil((vim.o.lines - height) / 2),
            col = math.ceil((vim.o.columns - width) / 2),
        }
        local win = vim.api.nvim_open_win(buf, true, opts)
        vim.fn.termopen("lazygit", {
            on_exit = function()
                vim.api.nvim_win_close(win, true)
            end
        })
        vim.cmd("startinsert")
        vim.api.nvim_buf_set_keymap(buf, 'n', 'q', '<cmd>close!<CR>', { noremap = true, silent = true })
    end
}
