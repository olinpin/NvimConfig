vim.keymap.set("n", "<C-n>", vim.cmd.Ex)
vim.keymap.set("n", ";", ":")


-- window nav remaps
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- window split remaps


-- move selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor in middle when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- keep copied text when pasting over selected text
vim.keymap.set("x", "<leader>p", "\"_dP")


-- replace the word you're on everywhere in buffer
vim.keymap.set("n", "<leader>w", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
