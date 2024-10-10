return {
    'tpope/vim-fugitive',
    event = "VeryLazy",
    config = function()
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
        vim.keymap.set("n", "<leader>gpl", ":G pull<CR>", { desc = "Git pull" })
        vim.keymap.set("n", "<leader>gps", ":G push<CR>", { desc = "Git push" })
        vim.keymap.set("n", "<leader>gc", ":Git commit<CR>", { desc = "Git commit" })
        vim.keymap.set("n", "<leader>ga", ":Gwrite<CR>", { desc = "Git add current file" })
    end
}
