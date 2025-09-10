return {
	"rebelot/kanagawa.nvim",
	config = function()
		require("kanagawa").setup({
			transparent = false,
		})
		vim.cmd("colorscheme kanagawa")
	end,
}
