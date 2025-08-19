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
						filetype = "snacks_layout_box",
						text_align = "left",
						separator = true,
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
