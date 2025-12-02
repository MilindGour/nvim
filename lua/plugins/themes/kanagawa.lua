return {
	"rebelot/kanagawa.nvim",
	config = function()
		require("kanagawa").setup({
			transparent = true,
		})

		vim.cmd("colorscheme kanagawa")
		vim.cmd("hi Visual guibg=#576f91")
	end,
}
