return {
    "L3MON4D3/LuaSnip",
    dependencies = {
        {"rafamadriz/friendly-snippets"},
    },
    config = function()
        -- load friendly snippets
        require("luasnip/loaders/from_vscode").lazy_load()
    end
}
