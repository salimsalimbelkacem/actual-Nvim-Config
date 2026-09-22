-- SYNTAX & EDITING
vim.pack.add({
  "https://github.com/nvim-treesitter/nvim-treesitter",
  "https://github.com/windwp/nvim-ts-autotag",
  "https://github.com/altermo/ultimate-autopair.nvim"
})

require("nvim-treesitter").install({
  "markdown_inline",
  "c", "lua", "vim",
  "query", "vimdoc",
  "markdown",
})

require("nvim-ts-autotag").setup({
  opts = { enable_close = true, enable_rename = true, enable_close_on_slash = false },
})

require("ultimate-autopair").setup({})

