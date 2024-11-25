return {
	"yetone/avante.nvim",
	event = "VeryLazy",
	lazy = false,
	config = function(_, opts)
		-- Let the plugin load first
		require("avante").setup(opts)
		-- Then remove the default mappings
		vim.schedule(function()
			vim.keymap.del({ "n", "v" }, "<leader>aa")
			vim.keymap.del("n", "<leader>ar")
			vim.keymap.del("v", "<leader>ae")
			vim.keymap.del("n", "<leader>ah")
			vim.keymap.del("n", "<leader>ad")
			vim.keymap.del("n", "<leader>af")
			vim.keymap.del("n", "<leader>aR")
			vim.keymap.del("n", "<leader>as")
			vim.keymap.del("n", "<leader>at")
		end)
	end,
	opts = {
		-- add any opts here
		provider = "copilot",
		copilot = {
			model = "claude-3.5-sonnet",
			-- max_tokens = 4096,
		},
	},
	build = "make",
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
			-- "zbirenbaum/copilot.lua", -- for providers='copilot'
			opts = {
				file_types = { "markdown", "Avante" },
			},
			ft = { "markdown", "Avante" },
		},
	},
}
