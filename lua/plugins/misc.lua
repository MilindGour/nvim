return {
	{
		"nvim-tree/nvim-web-devicons",
		opts = {},
	},
	{
		"rcarriga/nvim-notify",
		lazy = false,
		priority = 500,
		config = function()
			require("notify").setup({
				background_colour = "#000000",
				render = "compact",
				stages = "static",
			})
		end,
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},
}
