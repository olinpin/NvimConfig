function ColorMe(color)
    color = color or "OceanicNext"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        'mhartington/oceanic-next',
        config = function ()
            -- require('oceanic-next').setup()
            vim.cmd.colorscheme('OceanicNext')
            vim.cmd("highlight! EndOfBuffer guibg=background guifg=background")
        end
    }
    -- {
    --     'nxvu699134/vn-night.nvim',
    --     config = function ()
    --         vim.cmd.colorscheme('vn-night')
    --         vim.cmd("highlight! EndOfBuffer guibg=background guifg=background")
    --     end
    -- }
}
