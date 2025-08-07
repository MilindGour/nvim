return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local bufferline = require("bufferline")
		bufferline.setup({
			options = {
				indicator = {
					style = "icon",
				},
				buffer_close_icon = "󰅖",
				close_icon = "󰅖",
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						text_align = "left",
						separator = true,
					},
				},
				diagnostics = false,
				color_icons = true,
			},
		})
	end,
}
