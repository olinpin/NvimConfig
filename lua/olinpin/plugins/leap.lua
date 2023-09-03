return {
    "ggandor/leap.nvim",
    config = function ()
        require('leap')
        vim.keymap.set("n", "<leader>s", "<Plug>(leap-forward-to)", { desc = "Leap forward to" })
        -- default mapping: `s`

        vim.keymap.set("n", "<leader>S", "<Plug>(leap-backward-to)", { desc = "Leap backward to" })
        -- arguments: `{ backward = true }`
        -- default mapping: `S`

        vim.keymap.set("n", "<leader>b", "<Plug>(leap-forward-till)", { desc = "Leap forward till" } )
        -- arguments: `{ offset = -1, inclusive_op = true }`
        -- default mapping: `x` (Visual and Operator-pending mode only)

        vim.keymap.set("n", "<leader>B", "<Plug>(leap-backward-till)", { desc = "Leap backward till" })
        -- arguments: `{ backward = true, offset = 2 }`
        -- default mapping: `X` (Visual and Operator-pending mode only)

        -- <Plug>(leap-from-window)
        -- arguments: `{ target_windows = require('leap.util').get_enterable_windows() }`
        -- default mapping: `gs`
    end
}
