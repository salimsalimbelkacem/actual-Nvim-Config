return {
    pattern = "netrw",
    callback = function()
        vim.api.nvim_buf_set_keymap(0, 'n', 'l', '<CR>', { noremap = false, silent = true })
        vim.api.nvim_buf_set_keymap(0, 'n', 'q', '<C-6>', { noremap = false, silent = true })
        vim.api.nvim_buf_set_keymap(0, 'n', '<leader>e', '<C-6>', { noremap = false, silent = true })
        -- vim.api.nvim_buf_set_keymap(0, 'n', 'h', '-', { noremap = false, silent = true })
    end
}
