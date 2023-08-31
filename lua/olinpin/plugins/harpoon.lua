return {

    'ThePrimeagen/harpoon',
    event = "VeryLazy",
    dependencies = 'nvim-lua/plenary.nvim',
    config = function()
        require("harpoon").setup({
            tabline = true,
            tabline_prefix = "   ",
            tabline_suffix = "   ",
            menu = {
                width = vim.api.nvim_win_get_width(0) - 20,
            }
        })
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")
        local harpoon = require("harpoon")

        vim.keymap.set("n", "<leader>a", mark.add_file)
        vim.keymap.set("n", "<leader>x", function()
            -- remove current file
            mark.rm_file(vim.fn.expand('%'))

            local new_marks = {}
            local config = harpoon.get_mark_config()

            -- loop over the current marks
            for idx = 1, mark.get_length() do
                local filename = config.marks[idx].filename
                -- if the mark is not empty, add it to the new marks table (removes the '(empty)' file)
                if filename ~= "" then
                    table.insert(new_marks, {
                        filename = filename,
                        row = config.marks[idx].row,
                        col = config.marks[idx].col,
                    })
                end
            end
            config.marks = new_marks

            ui.nav_prev()

        end)
        vim.keymap.set("n", "<leader>h", ui.toggle_quick_menu)

        vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end)
        vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end)
        vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end)
        vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end)
        vim.keymap.set("n", "<leader>5", function() ui.nav_file(5) end)
        vim.keymap.set("n", "<leader>6", function() ui.nav_file(6) end)
        vim.keymap.set("n", "<leader>7", function() ui.nav_file(7) end)
        vim.keymap.set("n", "<leader>8", function() ui.nav_file(8) end)
        vim.keymap.set("n", "<leader>9", function() ui.nav_file(9) end)


        vim.keymap.set("n", "<tab>", ui.nav_next)
        vim.keymap.set("n", "<S-Tab>", ui.nav_prev)
        vim.cmd('highlight! HarpoonInactive guibg=NONE guifg=#63698c')
        vim.cmd('highlight! HarpoonActive guibg=NONE guifg=white')
        vim.cmd('highlight! HarpoonNumberActive guibg=NONE guifg=#7aa2f7')
        vim.cmd('highlight! HarpoonNumberInactive guibg=NONE guifg=#7aa2f7')
        vim.cmd('highlight! TabLineFill guibg=NONE guifg=background')
    end
}
