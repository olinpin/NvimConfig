-- keep cursor in middle
vim.o.scrolloff = 800
-- keep cursor on the left
vim.o.sidescrolloff = 30
-- set relative line numbering
vim.wo.relativenumber = true
-- turn off line wrap
vim.wo.wrap = false
-- make commands case insensitive
vim.o.ignorecase = true

-- make 4 space indents
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true


-- use undotree instead of vim backups
vim.opt.swapfile = false
vim.opt.backup = false
vim.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- make vim update fast
vim.opt.updatetime = 50


vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

vim.opt.signcolumn = "yes"