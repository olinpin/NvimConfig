vim.keymap.set("n", "<C-n>", vim.cmd.Ex, { desc = "Open explorer" })
vim.keymap.set("n", ";", ":")


-- window nav remaps
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move window left" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move window down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move window up" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move window right" })

-- window split remaps

-- move selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected up" })

-- keep cursor in middle when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- keep copied text when pasting over selected text
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Paste over selected text" })

-- replace the word you're on everywhere in buffer
vim.keymap.set("n", "<leader>w", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", { desc = "Replace word" })


-- move within insert mode
-- go to  beginning and end
vim.keymap.set("i", "<C-b>", "<ESC>^i", { desc = "Beginning of line" })
vim.keymap.set("i", "<C-e>", "<End>", { desc = "End of line" })

-- navigate within insert mode
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "Move left" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "Move right" })
vim.keymap.set("i", "<C-j>", "<Down>", { desc = "Move down" })
vim.keymap.set("i", "<C-k>", "<Up>", { desc = "Move up" })

vim.keymap.set("x", "Y", "\"*y", { desc = "Copy to clipboard" }) -- copy to clipboard

vim.keymap.set("n", "<ESC>", "<ESC>:noh<CR>", { desc = "Clear highlights" })

-- copy file path
vim.keymap.set("n", "<leader>cfp", [[:let @+ = expand("%:p")<CR>]], { desc = "Copy file path" })

vim.keymap.set("n", "ff", "za", { desc = "Fold" })

-- remap parentheses to add end parenthese
-- vim.keymap.set("i", "(", "()<Left>")
-- vim.keymap.set("i", "{", "{}<Left>")
-- vim.keymap.set("i", "[", "[]<Left>")

-- remap to add end quotes
-- vim.keymap.set("i", "'", "''<Left>")
-- vim.keymap.set("i", "\"", "\"\"<Left>")
-- vim.keymap.set("i", "`", "``<Left>")

-- remove mappings for avante
-- vim.keymap.del("n", "<leader>aa")
-- vim.keymap.del("v", "<leader>aa")
-- vim.keymap.del("n", "<leader>ar")
-- vim.keymap.del("v", "<leader>ae")
-- vim.keymap.del("n", "<leader>ah")
-- vim.keymap.del("n", "<leader>ad")

-- remove mappings from which-key
-- local wk = require("which-key")
-- wk.add({
--     { "<leader>aa", hidden = true },
--     { "<leader>ad", hidden = true },
--     { "<leader>ae", hidden = true },
--     { "<leader>ah", hidden = true },
--     { "<leader>ar", hidden = true },
-- })



vim.api.nvim_set_keymap("n", "<leader>ys", "<Plug>Ysurround", {})

