return {
	'mbbill/undotree',
    event = "VeryLazy",
	init = function()
		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
	end
}
