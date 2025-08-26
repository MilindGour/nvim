return {
	"RRethy/vim-illuminate",
	keys = {
		{
			"]]",
			function()
				require("illuminate").goto_next_reference(true)
			end,
			desc = "Goto Next Reference",
		},
		{
			"[[",
			function()
				require("illuminate").goto_prev_reference(true)
			end,
			desc = "Goto Prev Reference",
		},
	},
}
