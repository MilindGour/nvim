return {
	"rose-pine/neovim",
	config = function()
		require("rose-pine").setup({
			highlight_groups = {
				CursorLine = { bg = "#444444" },
				LspInlayHint = { bg = "NONE", fg = "#777777", blend = 100 },
				BlinkCmpDoc = { bg = "NONE" },
				BlinkCmpDocBorder = { bg = "NONE" },
				BlinkCmpDocSeparator = { bg = "NONE" },
			},
			styles = {
				transparency = true,
			},
		})

		vim.cmd("colorscheme rose-pine")
	end,
}
