return {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    opts = function()
        return {
            signs = {
                add = { text = "│" },
                change = { text = "│" },
                delete = { text = "󰍵" },
                topdelete = { text = "‾" },
                changedelete = { text = "~" },
                untracked = { text = "│" },
            }
        }
    end,
    config = function()
        require("gitsigns").setup()
    end
}
