return {
	"nvim-telescope/telescope.nvim",
	version = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("telescope").setup({
			defaults = {
				mappings = {
					i = {
						["<C-h>"] = "which_key",
						["<C-j>"] = "move_selection_next",
						["<C-k>"] = "move_selection_previous",
					},
				},
			},
		})

		local b = require("telescope.builtin")
		vim.keymap.set("n", "<leader><leader>", b.find_files, { desc = "Telescope: Find Files" })
	end,
}
