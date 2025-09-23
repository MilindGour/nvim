return {
	"rebelot/kanagawa.nvim",
	config = function()
		require("kanagawa").setup({
			transparent = false,
		})

		vim.cmd("colorscheme kanagawa")
		vim.cmd("hi Visual guibg=#576f91")
	end,
}
