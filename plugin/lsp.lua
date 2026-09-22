-- LSP & MASON
vim.pack.add({
  "https://github.com/williamboman/mason.nvim",
  "https://github.com/williamboman/mason-lspconfig.nvim",
  "https://github.com/neovim/nvim-lspconfig",
})

require("mason").setup()
require("mason-lspconfig").setup()



