return {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "williamboman/mason.nvim",
        "jose-elias-alvarez/null-ls.nvim",
    },
    config = function ()

        require("mason-null-ls").setup({
            ensure_installed = {
                "stylua",
                "jq",
                "php-cs-fixer",
                "intelephense",
                "black",
                "prettier",
            }
        })

        local null_ls = require("null-ls")
        local format = null_ls.builtins.formatting

        null_ls.setup({
            sources = {
                format.black,
                format.stylua,
                format.prettier
            }
        })
        vim.keymap.set({"n", "x"}, "=", function() vim.cmd('LspZeroFormat') end, { desc = "Format" })
    end
}
