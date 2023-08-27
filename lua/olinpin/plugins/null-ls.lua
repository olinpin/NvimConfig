return {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "williamboman/mason.nvim",
        "jose-elias-alvarez/null-ls.nvim",
    },
    config = function ()
        local null_ls = require("null-ls")
        local format = null_ls.builtins.formatting

        null_ls.setup({
            sources = {
                format.stylua,
                format.prettier,
            },
        })
        require("mason-null-ls").setup({
            ensure_installed = {
                "stylua",
                "jq"
            }
        })
    end
}
