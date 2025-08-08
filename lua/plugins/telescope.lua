return {
	"nvim-telescope/telescope.nvim",
	version = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		defaults = {
			mappings = {
				i = {
					["<C-h>"] = "which_key",
					["<C-j>"] = "move_selection_next",
					["<C-k>"] = "move_selection_previous",
				},
			},
		},
	},
	keys = {
		{
			"<leader><leader>",
			function()
				require("telescope.builtin").find_files()
			end,
			desc = "Tel: Find Files",
		},
		{
			"<leader>sg",
			function()
				require("telescope.builtin").live_grep()
			end,
			desc = "Tel: Live Grep",
		},
		{
			"<leader>sh",
			function()
				require("telescope.builtin").help_tags()
			end,
			desc = "Tel: Search Help",
		},
		{
			"<leader>sk",
			function()
				require("telescope.builtin").keymaps()
			end,
			desc = "Tel: Search Keymaps",
		},
		{
			"<leader>sb",
			function()
				require("telescope.builtin").buffers()
			end,
			desc = "Tel: Search Buffers",
		},
		{
			"<leader>s.",
			function()
				require("telescope.builtin").oldfiles()
			end,
			desc = "Tel: Search Recent Files",
		},
		{
			"<leader>st",
			function()
				require("telescope.builtin").tags()
			end,
			desc = "Tel: Search Tags",
		},
		{
			"<leader>st",
			function()
				require("telescope.builtin").tags()
			end,
			desc = "Tel: Search Tags",
		},
		{
			"<leader>sq",
			function()
				require("telescope.builtin").quickfix()
			end,
			desc = "Tel: Search Quickfix",
		},
	},
}
