return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		-- vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	config = function()
		local wk = require("which-key")
		wk.add({
			{ "<leader>1", desc = "Openf harpoon buffer 1" },
			{ "<leader>2", hidden = true },
			{ "<leader>3", hidden = true },
			{ "<leader>4", hidden = true },
			{ "<leader>5", hidden = true },
			{ "<leader>6", hidden = true },
			{ "<leader>7", hidden = true },
			{ "<leader>8", hidden = true },
			{ "<leader>9", hidden = true },
			{ "<leader>a", desc = "Add file to harpoon" },
			{ "<leader>dd", desc = "duck hatch" },
			{ "<leader>dk", desc = "duck cook" },
			{ "<leader>f", group = "Find" },
			{ "<leader>g", group = "Git" },
			{ "<leader>gs", desc = "Open Git status" },
			{ "<leader>h", desc = "Open Harpoon quick menu" },
			{ "<leader>u", desc = "Toggle Undotree" },
			{ "<leader>w", desc = "Replace all current words" },
			{ "<leader>x", desc = "Close and remove buffer from harpoon" },
		})
	end,
}
