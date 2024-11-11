local _bad = { ".*%.min.css", ".*%.min.js" } -- remove minified results crashing the previewer
local bad_files = function(filepath)
	for _, v in ipairs(_bad) do
		if filepath:match(v) then
			return false
		end
	end

	return true
end

local new_maker = function(filepath, bufnr, opts)
	local previewers = require("telescope.previewers")
	opts = opts or {}
	if opts.use_ft_detect == nil then
		opts.use_ft_detect = true
	end
	opts.use_ft_detect = opts.use_ft_detect == false and false or bad_files(filepath)
	previewers.buffer_previewer_maker(filepath, bufnr, opts)
end

return {
	"nvim-telescope/telescope.nvim",
	event = "VeryLazy",
	tag = "0.1.2",
	dependencies = { "nvim-lua/plenary.nvim" },
	init = function()
		local builtin = require("telescope.builtin")
		local telescope = require("telescope")

		telescope.setup({
            pickers = {
                find_command = { "rg", "--files", "--hidden", "--no-ignore",
                    "--glob", "!**/.git/*", "--glob", "!**/venv/*", "--glob", "!**/.venv/*", "--glob",
                    "!**/node_modules/*",
                    "--glob", "!**/vendor/*", "--glob", "!**/var/cache/*",
                    "--glob", "!**/.next/*", "--glob", "!**/out/*", "--glob", "!**/dist/*", "--glob", "!**.min.js", "prompt_prefix=🔍",
                },
            },
			preview = {
				filesize_limit = 0.5, -- MB
			},
		})
	end,

    -- keymaps are specified in which-key...
}
