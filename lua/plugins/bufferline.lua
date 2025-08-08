return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local bufferline = require("bufferline")
		bufferline.setup({
			options = {
				indicator = {
					style = "none",
				},
				buffer_close_icon = "󰅖",
				always_show_bufferline = false,
				close_icon = "󰅖",
				offsets = {
					{
						filetype = "neo-tree",
						text_align = "left",
						text = "File Explorer",
						separator = false,
					},
				},
				separator_style = { "", "" },
				diagnostics = false,
				color_icons = true,
				highlights = {
					fill = {
						bg = "#ff0000",
					},
					buffer_selected = {
						italic = false,
						bold = true,
					},
				},
			},
		})
	end,
}
