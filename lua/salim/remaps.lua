vim.api.nvim_set_keymap("v","q", "<esc>", { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>t', '<cmd>split term://bash<cr><cmd>resize 5<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><leader>', '<cmd>noh<cr>', { noremap = true, silent = true })

vim.api.nvim_set_keymap("i","<A-j>", "<esc><cmd>m .+1<CR>==gi", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i","<A-k>", "<esc><cmd>m .-2<CR>==gi", { noremap = true, silent = true })

vim.api.nvim_set_keymap("v","<A-j>", "<cmd>m '>+1<CR>gv==gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v","<A-k>", "<cmd>m '<-2<CR>gv==gv", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n","<A-j>", "<cmd>m .+1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<A-k>", "<cmd>m .-2<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n","<leader>li", "<cmd>LspInfo<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<leader>lm", "<cmd>Mason<CR>",   { noremap = true, silent = true })

vim.api.nvim_set_keymap("n","<leader>pu", "<cmd>Lazy update<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<leader>pc", "<cmd>Lazy check<CR>",  { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<leader>ps", "<cmd>Lazy sync<CR>",   { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<leader>pl", "<cmd>Lazy<CR>",        { noremap = true, silent = true })

vim.keymap.set('n', '<leader>gl', require("salim.lazyGit").Floating_lazygit, { noremap = true, silent = true })
