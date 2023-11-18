return {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    config = function ()
        require("copilot").setup({
            suggestion = {
                enabled = true,
                auto_trigger = true,
                keymap = {
                    accept = "…"
                }
            },
            panel = {
                enabled = false,
            },
            filetypes = {
                ["."] = false,
            }
        })
    end
}
