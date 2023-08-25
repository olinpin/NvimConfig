plugins = {
	"folke/which-key.nvim",
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		dependencies = { 'nvim-lua/plenary.nvim' },
		opts = function()
			require("olinpin.after.plugins.telescope")
		end,
	},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000, 
		opts = function(_, opts)
			require("olinpin.after.plugins.colors")
		end,
	},
	{ 'nvim-treesitter/nvim-treesitter', cmd = 'TSUpdate' },
	-- { 'rose-pine/neovim', name = 'rose-pine' },
}
