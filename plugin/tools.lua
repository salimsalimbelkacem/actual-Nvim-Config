-- TOOLS & UTILITIES
vim.pack.add({
  "https://github.com/folke/trouble.nvim",
  "https://github.com/chomosuke/typst-preview.nvim"
})

require("trouble").setup({})
require("typst-preview").setup({})
