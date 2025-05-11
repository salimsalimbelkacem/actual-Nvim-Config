vim.g.mapleader = ' '
vim.g.localmapleader = " "

vim.o.termguicolors  = true
vim.o.signcolumn     = 'yes'
vim.o.clipboard      = "unnamedplus"
vim.o.showmode       = false

vim.o.nu  = true
vim.o.rnu = true

vim.o.undofile = true
vim.o.undodir  = "/home/salim/.vim/vimundo"

vim.o.softtabstop = 4
vim.o.shiftwidth  = 4
vim.o.expandtab   = true
vim.o.tabstop     = 4

vim.o.swapfile = false
vim.o.backup   = false

vim.o.foldlevelstart = 99
vim.o.foldmethod     = "expr"
vim.o.foldcolumn     = '1'
vim.o.foldenable     = true
vim.o.fillchars      = "foldopen:,foldclose:,foldsep: "
vim.o.foldexpr       = "nvim_treesitter#foldexpr()"
vim.foldlevel        = 99

vim.opt.updatetime = 250
-- vim.opt.timeoutlen = 300

vim.opt.cursorline = true
vim.opt.scrolloff  = 10

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.g.netrw_localcopydircmd = 'cp -r'
vim.g.netrw_liststyle       = 3
vim.g.netrw_keepdir         = false
vim.g.netrw_winsize         = 20
vim.g.netrw_banner          = 0
vim.g.netrw_bufsettings     = 'noma nomod nu rnu nobl nowrap ro'

require("salim.remaps")
require("salim.lazy")
print("welcome")
