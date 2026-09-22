-- UI & APPEARANCE
vim.pack.add({ "https://github.com/sho-87/kanagawa-paper.nvim" })
require("kanagawa-paper").setup({ dimInactive = false, transparent = true })
vim.cmd.colorscheme("kanagawa-paper")

vim.pack.add({
  "https://github.com/nvim-lualine/lualine.nvim",
  "https://github.com/nvim-tree/nvim-web-devicons",
})
require("lualine").setup(require("config.lualine"))

vim.pack.add({ "https://github.com/luukvbaal/statuscol.nvim" })
require("statuscol").setup({
  setopt = true,
  segments = {
    { text = { require("statuscol.builtin").foldfunc }, click = "v:lua.ScFa" },
    { text = { "%s" }, click = "v:lua.ScSa" },
    {
      text = { require("statuscol.builtin").lnumfunc, " " },
      condition = { true, require("statuscol.builtin").not_empty },
      click = "v:lua.ScLa",
    },
  },
})

vim.pack.add({ "https://github.com/j-hui/fidget.nvim" })
require("fidget").setup({})

