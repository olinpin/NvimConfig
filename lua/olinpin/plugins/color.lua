-- function ColorMe(color)
--     color = color or "catppuccin"
--     vim.cmd.colorscheme(color)
--
--     vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- end
--
-- return {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     priority = 1000,
--     init = function()
--         ColorMe()
--         vim.o.background = "dark"
--     end
-- }

return {
    'mhartington/oceanic-next',
    init = function ()
        -- require('oceanic-next').setup()
        vim.cmd.colorscheme('OceanicNext')
        vim.cmd("highlight! EndOfBuffer guibg=background guifg=background")
    end
}
