-- keep cursor in middle
vim.o.scrolloff = 800
-- keep cursor on the left
vim.o.sidescrolloff = 30
-- set relative line numbering
vim.opt.nu = true
vim.wo.relativenumber = true
-- turn off line wrap
vim.wo.wrap = false
-- make commands case insensitive
vim.o.ignorecase = true

-- indenting
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


-- vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

vim.opt.signcolumn = "yes"

vim.opt.termguicolors = true

vim.opt.fillchars = { fold = " " }
vim.opt.foldmethod = "indent"
vim.opt.foldenable = false
vim.opt.foldlevel = 99
-- g.markdown_folding = 1 -- enable markdown folding

