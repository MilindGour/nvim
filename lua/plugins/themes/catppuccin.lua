return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	lazy = false,
	config = function()
		require("catppuccin").setup({
			flavour = "auto", -- auto, latte, frappe, macchiato, mocha
			transparent_background = false,
		})

		vim.cmd("colorscheme catppuccin")
	end,
}
