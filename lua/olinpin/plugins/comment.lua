return {
    "numToStr/Comment.nvim",
    event = "VeryLazy",
    lazy = false,

    config = function ()
        require('Comment').setup({
            opleader = {
                -- Line-comment toggle keymap
                line = '<leader>/'
            },
            toggler = {
                line = "<leader>/"
            }
        })
    end
}
