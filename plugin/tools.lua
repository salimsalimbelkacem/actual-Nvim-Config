-- TOOLS & UTILITIES
vim.pack.add({
  "https://github.com/chomosuke/typst-preview.nvim",
  "https://github.com/folke/trouble.nvim"
})
require('nvim-web-devicons').setup ({})
require("typst-preview").setup({})
require("trouble").setup({
  focus = true,
})

vim.keymap.set('n', '<leader>xx', "<CMD>Trouble diagnostics<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<leader>xs', "<CMD>Trouble symbols<CR>", { noremap = true, silent = true })
