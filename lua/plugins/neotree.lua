return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		lazy = false, -- neo-tree will lazily load itself
		keys = {
			{ "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle neo-tree" } },
		},
		config = function()
			local neotree = require("neo-tree")
			neotree.setup({
				window = {
					width = 25,
					mappings = {
						["l"] = "open",
						["h"] = "close_node",
					},
				},
				filesystem = {
					follow_current_file = {
						enabled = true,
					},
				},
				default_component_configs = {
					git_status = {
						symbols = {
							-- Change type
							added = "A", -- or "✚"
							modified = "M", -- or ""
							deleted = "D", -- this can only be used in the git_status source
							renamed = "R", -- this can only be used in the git_status source
							-- Status type
							untracked = "U",
							ignored = "",
							unstaged = "",
							staged = "",
							conflict = "",
						},
					},
				},
			})
		end,
	},
}
