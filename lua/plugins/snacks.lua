return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		bigfile = { enabled = true },
		scroll = { enabled = true },
		dashboard = { enabled = true },
		explorer = { enabled = true },
		input = { enabled = true },
		picker = {
			enabled = true,
			sources = {
				explorer = {
					layout = {
						layout = {
							width = 30,
						},
					},
				},
			},
		},
		lazygit = {},
	},
	keys = {
		{
			"<leader>bd",
			function()
				Snacks.bufdelete.delete()
			end,
			desc = "Delete Buffer",
		},
		{
			"<leader>bo",
			function()
				Snacks.bufdelete.other()
			end,
			desc = "Delete Other Buffers",
		},
		{
			"<leader>bD",
			function()
				Snacks.bufdelete.all()
			end,
			desc = "Delete All Buffers",
		},
		{
			"<leader>gg",
			function()
				Snacks.lazygit.open()
			end,
			desc = "Open LazyGit",
		},
		{
			"<leader>gl",
			function()
				Snacks.lazygit.log_file()
			end,
			desc = "Open Git filelog",
		},
		{
			"<leader>gL",
			function()
				Snacks.lazygit.log()
			end,
			desc = "Open Git log",
		},

		-- Pickers Configuration
		{
			"<leader>e",
			function()
				Snacks.picker.explorer()
			end,
			desc = "Open Snacks Explorer",
		},
		{
			"<leader>sd",
			function()
				Snacks.picker.diagnostics_buffer()
			end,
			desc = "Search Buffer Diagnostics",
		},
		{
			"<leader>sD",
			function()
				Snacks.picker.diagnostics()
			end,
			desc = "Search Global Diagnostics",
		},
		{
			"<leader><leader>",
			function()
				Snacks.picker.files()
			end,
			desc = "Open File",
		},
		{
			"<leader>sh",
			function()
				Snacks.picker.help()
			end,
			desc = "Search Help",
		},
		{
			"<leader>sk",
			function()
				Snacks.picker.keymaps()
			end,
			desc = "Search Keymaps",
		},
		{
			"<leader>sb",
			function()
				Snacks.picker.buffers()
			end,
			desc = "Search Buffers",
		},
		{
			"<leader>sc",
			function()
				Snacks.picker.colorschemes()
			end,
			desc = "Search Colorschemes",
		},
	},
}
