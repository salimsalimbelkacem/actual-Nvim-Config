vim.g.mapleader = ' '
vim.g.localmapleader = " "

vim.o.termguicolors = true
vim.o.signcolumn = 'yes'
vim.o.clipboard	 = "unnamedplus"
vim.o.showmode = false

vim.o.nu  = true
vim.o.rnu = true

vim.o.undofile = true
vim.o.undodir  = "/home/salim/.vim/vimundo"

vim.o.expandtab = true
vim.o.softtabstop= 4
vim.o.shiftwidth= 4
vim.o.tabstop	= 4

vim.cmd(
    [[ autocmd FileType html, lua, javascript, javascriptreact setlocal softtabstop=2 shiftwidth=2 tabstop=2 ]]
)							

vim.opt.iskeyword = vim.opt.iskeyword - "_"

vim.o.swapfile = false
vim.o.backup   = false

vim.o.foldenable = true
vim.o.foldmethod = "expr"
vim.o.foldcolumn = '1'
vim.o.fillchars	 = "foldopen:,foldclose:,foldsep: "
vim.o.foldexpr	 = "nvim_treesitter#foldexpr()"
vim.foldlevel	 = 99
vim.o.foldlevelstart = 99

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.cursorline = true
vim.opt.scrolloff  = 10

vim.opt.colorcolumn = "100"

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.g.netrw_localcopydircmd = 'cp -r'
vim.g.netrw_keepdir	= false
vim.g.netrw_winsize	= 13
vim.g.netrw_banner	= 0
vim.g.netrw_bufsettings	= 'noma nomod nu rnu nobl nowrap ro'
vim.g.netrw_keepdir = 1

vim.api.nvim_create_autocmd('TextYankPost', { callback = function() vim.hl.on_yank() end, })

vim.cmd([[
autocmd FileType yuck setlocal commentstring=;%s
]])							

require("salim.remaps")
require("salim.lazy")

print("welcome")
