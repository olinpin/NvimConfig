return {
	'nvim-treesitter/nvim-treesitter',
    event = "VeryLazy",
	cmd = 'TSUpdate',
	config = function()
		require'nvim-treesitter.configs'.setup {
			-- A list of parser names, or "all" (the five listed parsers should always be installed)
			ensure_installed = {
				"vimdoc",
				"bash",
				"css",
				"javascript",
				"python",
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"go",
                "markdown",
                "markdown_inline",
                "regex",
                "swift",
                "php",
                "kotlin",
                "rust",
                "haskell",
                "html"
			},

			-- Install parsers synchronously (only applied to `ensure_installed`)
			sync_install = false,

			-- Automatically install missing parsers when entering buffer
			-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
			auto_install = true,

			highlight = {
				enable = true,

				-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
				-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
				-- Using this option may slow down your editor, and you may see some duplicate highlights.
				-- Instead of true it can also be a list of languages
				additional_vim_regex_highlighting = {"markdown"}
			},
        }
        require'lspconfig'.sourcekit.setup{
            cmd = {'/usr/bin/sourcekit-lsp'}
        }
        require('lspconfig')['hls'].setup{
            filetypes = { 'haskell', 'lhaskell', 'cabal' },
        }

        -- vim.keymap.set('n','gd',vim.lsp.buf.definition)
    end

}
