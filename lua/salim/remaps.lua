vim.keymap.set("v","q", "<esc>", { noremap = true, silent = true })

vim.keymap.set('n', 'j', 'gj', { noremap = true, silent = true })
vim.keymap.set('n', 'k', 'gk', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>t', '<cmd>split term://bash<cr><cmd>resize 5<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader><leader>', '<cmd>noh<cr><C-l>', { noremap = true, silent = true })

vim.keymap.set("n", "<C-s>", "<cmd>w<cr>", { noremap = true, silent = true })

vim.keymap.set("i","<A-j>", "<esc><cmd>m .+1<CR>==gi", { noremap = true, silent = true })
vim.keymap.set("i","<A-k>", "<esc><cmd>m .-2<CR>==gi", { noremap = true, silent = true })

vim.keymap.set("v","<A-j>", "<cmd>m '>+1<CR>gv==gv", { noremap = true, silent = true })
vim.keymap.set("v","<A-k>", "<cmd>m '<-2<CR>gv==gv", { noremap = true, silent = true })

vim.keymap.set("n","<A-j>", "<cmd>m .+1<CR>", { noremap = true, silent = true })
vim.keymap.set("n","<A-k>", "<cmd>m .-2<CR>", { noremap = true, silent = true })

vim.keymap.set("n","<leader>li", "<cmd>LspInfo<CR>", { noremap = true, silent = true })
vim.keymap.set("n","<leader>lm", "<cmd>Mason<CR>",   { noremap = true, silent = true })

vim.keymap.set("n","<leader>pu", "<cmd>Lazy update<CR>", { noremap = true, silent = true })
vim.keymap.set("n","<leader>pc", "<cmd>Lazy check<CR>",  { noremap = true, silent = true })
vim.keymap.set("n","<leader>ps", "<cmd>Lazy sync<CR>",   { noremap = true, silent = true })
vim.keymap.set("n","<leader>pl", "<cmd>Lazy<CR>",        { noremap = true, silent = true })

vim.keymap.set("n","<leader>e", "<CMD>Lex!<CR>", { noremap = true, silent = true })

vim.keymap.set("n","<M-Tab>", "<CMD>tabnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n","<M-w>", "<CMD>tabclose<CR>", { noremap = true, silent = true })
vim.keymap.set("n","<M-t>", "<CMD>tabnew<CR>", { noremap = true, silent = true })

vim.keymap.set("n","<A-p>", '"0p', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>cm", "<CMD>!make<CR>", {})
vim.keymap.set("n", "<leader>cc", ":!make ", {})

vim.keymap.set("n", "q:", "<Nop>", {})

vim.keymap.set('n', '<leader>gl', require("salim.lazyGit").Floating_lazygit, { noremap = true, silent = true })

vim.api.nvim_create_autocmd("FileType", require("salim.netrwMaps") )
