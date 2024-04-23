return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        -- vim.o.timeout = true
        vim.o.timeoutlen = 50
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

            -- harpoon
            ["1"] = { "Openf harpoon buffer 1" },
            ["2"] = "which_key_ignore",
            ["3"] = "which_key_ignore",
            ["4"] = "which_key_ignore",
            ["5"] = "which_key_ignore",
            ["6"] = "which_key_ignore",
            ["7"] = "which_key_ignore",
            ["8"] = "which_key_ignore",
            ["9"] = "which_key_ignore",
            h = { "Open Harpoon quick menu" },
            x = { "Close and remove buffer from harpoon" },
            a = { "Add file to harpoon" },

            w = { "Replace all current words" },
            u = { "Toggle Undotree" },
            d = {
                d = { "duck hatch" },
                k = { "duck cook" }
            }
        },
        {
            prefix = "<leader>"
        }
        )
        -- remove mapping for <leader>2 in which key
        -- wk.which_key_map["2"] = nil
    end
}
