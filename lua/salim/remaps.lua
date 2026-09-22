vim.keymap.set("v","q", "<esc>", { noremap = true, silent = true })

vim.keymap.set("n","<C-s>", "<CMD>w<CR>", { noremap = true, silent = true })
vim.keymap.set("i","<C-s>", "<CMD>w<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<leader>w', '<cmd>w<cr>', { noremap = true, silent = true })

-- EDITING

vim.keymap.set("i","<A-j>", "<esc><cmd>m .+1<CR>==gi", { noremap = true, silent = true })
vim.keymap.set("i","<A-k>", "<esc><cmd>m .-2<CR>==gi", { noremap = true, silent = true })

vim.keymap.set("v","<A-j>", "<cmd>m '>+1<CR>gv==gv", { noremap = true, silent = true })
vim.keymap.set("v","<A-k>", "<cmd>m '<-2<CR>gv==gv", { noremap = true, silent = true })

vim.keymap.set("n","<A-j>", "<cmd>m .+1<CR>", { noremap = true, silent = true })
vim.keymap.set("n","<A-k>", "<cmd>m .-2<CR>", { noremap = true, silent = true })

-- NAVIGATION

vim.keymap.set('n', 'j', 'gj', { noremap = true, silent = true })
vim.keymap.set('n', 'k', 'gk', { noremap = true, silent = true })

vim.keymap.set("n","<M-t>", "<CMD>tabnew<CR>", { noremap = true, silent = true })
vim.keymap.set("n","<M-]>", "<CMD>tabnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n","<M-[>", "<CMD>tabprevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n","<M-w>", "<CMD>tabclose<CR>", { noremap = true, silent = true })

vim.keymap.set("n","<M-l>", "<C-w>5>", { noremap = true, silent = true })
vim.keymap.set("n","<M-h>", "<C-w>5<", { noremap = true, silent = true })

vim.keymap.set('n', '<leader><leader>', '<cmd>noh<cr><C-l>', { noremap = true, silent = true })

-- SPAWN

vim.keymap.set("n","<leader>m", "<cmd>Mason<CR>",   { noremap = true, silent = true })
vim.keymap.set("n","<leader>e", "<CMD>Ex<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<leader>t', '<cmd>vs term://fish<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>xx', "<CMD>Trouble diagnostics<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gl', require("salim.lazyGit").Floating_lazygit, { noremap = true, silent = true })
vim.keymap.set("n","<leader>pu", function () vim.pack.update() end , { noremap = true, silent = true })

vim.api.nvim_create_autocmd("FileType", {
    pattern = "netrw",
    callback = function()
        vim.api.nvim_buf_set_keymap(0, 'n', 'l', '<CR>', { noremap = false, silent = true })
        vim.api.nvim_buf_set_keymap(0, 'n', 'q', '<C-6>', { noremap = false, silent = true })
        vim.api.nvim_buf_set_keymap(0, 'n', '<leader>e', '<C-6>', { noremap = false, silent = true })
        -- vim.api.nvim_buf_set_keymap(0, 'n', 'h', '-', { noremap = false, silent = true })
    end
} )
