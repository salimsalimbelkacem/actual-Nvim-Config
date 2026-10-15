-- FUZZY FINDER
vim.pack.add({
  "https://github.com/nvim-telescope/telescope.nvim",
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/nvim-telescope/telescope-ui-select.nvim",
})
require("telescope").setup({
  extensions = {
    ["ui-select"] = { require("telescope.themes").get_dropdown({}) },
  },
})
require("telescope").load_extension("ui-select")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { noremap = true, silent = true })
vim.keymap.set("n","<leader>ff",  builtin.find_files, { noremap = true, silent = true })
vim.keymap.set("n","<leader>fb",  builtin.buffers, { noremap = true, silent = true })
vim.keymap.set("n","<leader>fg",  builtin.live_grep, { noremap = true, silent = true })
