return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {'williamboman/mason.nvim'},           -- Optional
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
    },
    config = function()
        local lsp = require('lsp-zero')

        lsp.preset('recommended')

        lsp.on_attach(function(client, bufnr)
            -- see :help lsp-zero-keybindings
            -- to learn the available actions
            lsp.default_keymaps({buffer = bufnr})
        end)

        lsp.setup_servers({'ts_ls', 'eslint', 'html', 'hls', 'gopls'})

        -- require("lspconfig").html.setup({
        --     filetypes = { "html", "htmldjango" },
        --     init_options = {
        --         configurationSection = { "html", "css", "javascript" },
        --         embeddedLanguages = {
        --             css = true,
        --             javascript = true,
        --         },
        --         provideFormatter = true,
        --     },
        -- })

        require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
        lsp.set_sign_icons({
            error = '✘',
            warn = '▲',
            hint = '⚑',
            info = '»'
        })
        lsp.setup()
    end
}
