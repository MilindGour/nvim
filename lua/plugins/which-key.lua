return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		preset = "helix",
		delay = 500,
		spec = {
			{ "<leader>b", group = "Buffer" },
			{ "<leader>f", group = "Flash" },
			{ "<leader>g", group = "Git" },
			{ "<leader>s", group = "Search" },
		},
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
