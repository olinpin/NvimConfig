return {
    "airblade/vim-gitgutter",
    setup = function ()
        vim.g.gitgutter_sign_added = "+"
        vim.g.gitgutter_sign_modified = ">"
        vim.g.gitgutter_sign_removed = "-"
        vim.g.gitgutter_override_sign_column_highlight = 1

    end
}
