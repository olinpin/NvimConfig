return {
	"yetone/avante.nvim",
	event = "VeryLazy",
	lazy = false,
	opts = {
		-- add any opts here
		provider = "copilot",
		copilot = {
			model = "claude-3.5-sonnet",
			-- max_tokens = 4096,
		},
	},
	keys = {
		{
			"<leader>ca",
			function()
				require("avante.api").ask()
			end,
			desc = "avante: ask",
			mode = { "n", "v" },
		},
		{
			"<leader>cr",
			function()
				require("avante.api").refresh()
			end,
			desc = "avante: refresh",
		},
		{
			"<leader>ce",
			function()
				require("avante.api").edit()
			end,
			desc = "avante: edit",
			mode = "v",
		},
		{
			"<leader>ch",
			function()
				require("avante.api").hint()
			end,
			desc = "avante: hint",
			mode = "n",
		},
		{
			"<leader>cd",
			function()
				require("avante.api").debug()
			end,
			desc = "avante: debug",
			mode = "n",
		},
	},
	dependencies = {
		"stevearc/dressing.nvim",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		--- The below dependencies are optional,
		-- "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
		{
			-- Make sure to setup it properly if you have lazy=true
			"MeanderingProgrammer/render-markdown.nvim",
			opts = {
				file_types = { "markdown", "Avante" },
			},
			ft = { "markdown", "Avante" },
		},
	},
}
