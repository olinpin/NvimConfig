return {
    "folke/which-key.nvim",
    -- event = "VeryLazy",
    init = function()
        -- vim.o.timeout = true
        vim.o.timeoutlen = 500
    end,
    config = function() 
        local wk = require("which-key")
        wk.register({
            f = {
                name = "Find",
                f = { "<cmd>Telescope find_files<cr>", "Find Files" },
                g = { "<cmd>Telescope git_files<cr>", "Find Git Files" },
                w = { "<cmd>Telescope live_grep<cr>", "Find Words" }
            },
            g = {
                name = "Git",
                s = { "Open Git status" },
            },
            ["1"] = { "Open harpoon buffer 1" },
            ["2"] = { "Open harpoon buffer 2" },
            ["3"] = { "Open harpoon buffer 3" },
            ["4"] = { "Open harpoon buffer 4" },
            ["5"] = { "Open harpoon buffer 5" },
            ["6"] = { "Open harpoon buffer 6" },
            ["7"] = { "Open harpoon buffer 7" },
            ["8"] = { "Open harpoon buffer 8" },
            ["9"] = { "Open harpoon buffer 9" },
            x = { "Close and remove buffer from harpoon" },
            w = { "Replace all current words" },
            a = { "Add file to harpoon" },
            u = { "Toggle Undotree" },
        },
        {
            prefix = "<leader>"
        }
        )
    end
}
