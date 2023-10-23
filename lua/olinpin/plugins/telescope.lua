return {
    'nvim-telescope/telescope.nvim',
    event = "VeryLazy",
    tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
        vim.keymap.set('n', 'gd', "<cmd>Telescope lsp_definitions<cr>")
    end
}

