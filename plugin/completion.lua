-- COMPLETION
vim.pack.add({
  "https://github.com/saghen/blink.lib",
  "https://github.com/saghen/blink.cmp",
  "https://github.com/rafamadriz/friendly-snippets",
})

require("blink.cmp").build()

require("blink.cmp").setup({

  keymap = {
    preset = "default",
  },

  sources = {
    default = { "lsp", "path", "snippets", "buffer" },
  },
})
