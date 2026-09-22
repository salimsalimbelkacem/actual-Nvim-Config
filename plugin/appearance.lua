-- UI & APPEARANCE
vim.pack.add({ "https://github.com/sho-87/kanagawa-paper.nvim" })
require("kanagawa-paper").setup({ dimInactive = false, transparent = true })
vim.cmd.colorscheme("kanagawa-paper")

vim.pack.add({
  "https://github.com/nvim-lualine/lualine.nvim",
  "https://github.com/nvim-tree/nvim-web-devicons",
})
require("lualine").setup({
  options = {
    icons_enabled = true,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
    lualine_y = { 'progress', 'location'},
    lualine_z = { 'mode'}
  },
  inactive_sections = {
    lualine_b = {'filename'}, lualine_c = {'filetype'},
    lualine_a = {}, lualine_x = {}, lualine_y = {}, lualine_z = {}
  },
})

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

