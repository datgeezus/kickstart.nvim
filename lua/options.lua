vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.tabstop = 4 -- number of visual spaces per tab
vim.opt.softtabstop = 4 -- number of spaces in tab when editting
vim.opt.shiftwidth = 4
vim.opt.expandtab = true -- tabs as spaces
vim.opt.smartindent = true
vim.opt.showmatch = true -- highlight matching [{()}]
vim.opt.incsearch = true -- search as charactes are entered
vim.opt.swapfile = false -- creates a swap file
vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.opt.colorcolumn = '88'

vim.cmd.colorscheme 'catppuccin-mocha'
