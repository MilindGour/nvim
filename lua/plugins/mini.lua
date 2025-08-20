return {
	"echasnovski/mini.nvim",
	version = false,
	event = "BufReadPre",
	config = function()
		require("mini.pairs").setup()
		require("mini.ai").setup()
		require("mini.move").setup()
		require("mini.splitjoin").setup()
		require("mini.surround").setup()
	end,
}
