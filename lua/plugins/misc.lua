return {
	{
		"nvim-tree/nvim-web-devicons",
		opts = {},
	},
	{ "MunifTanjim/nui.nvim", lazy = true },
	{
		"stevearc/dressing.nvim",
		opts = {},
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
		keys = {
			{ "<leader>xt", "<cmd>TodoQuickFix<CR>", { desc = "Open TODO quickfix" } },
		},
	},
}
