return {
	{
		"lewis6991/gitsigns.nvim",
		event = "BufReadPre",
		keys = {
			{
				"<leader>gH",
				":Gitsigns preview_hunk<CR>",
				desc = "Show Hunks in buffer",
			},
			{
				"<leader>gN",
				":Gitsigns nav_hunk next<CR>",
				desc = "Goto Next Hunk",
			},
			{
				"<leader>gP",
				":Gitsigns nav_hunk prev<CR>",
				desc = "Goto Prev Hunk",
			},
			{
				"<leader>gR",
				":Gitsigns reset_hunk",
				desc = "Reset this Hunk",
			},
			{
				"<leader>gS",
				":Gitsigns stage_hunk",
				desc = "Stage this Hunk",
			},
		},
		opts = {
			signs = {
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "-" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
				untracked = { text = "?" },
			},
		},
	},
	{
		"tpope/vim-fugitive",
	},
}
