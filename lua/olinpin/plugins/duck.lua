return {
    'tamton-aquib/duck.nvim',
    config = function()
        local duck = require("duck")
        vim.keymap.set('n', '<leader>dd', function() duck.hatch() end, {})
        vim.keymap.set('n', '<leader>dc', function() duck.hatch("🐿️", 20) end, {})
        vim.keymap.set('n', '<leader>dk', function() duck.cook() end, {})
        vim.keymap.set('n', '<leader>dk', function() duck.cook("🐿️") end, {})
        -- duck.hatch("🐿️", 20)
    end
}
