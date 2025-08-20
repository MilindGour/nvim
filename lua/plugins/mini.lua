return {
	"echasnovski/mini.nvim",
	version = false,
	config = function()
		require("mini.pairs").setup()
		require("mini.ai").setup()
		require("mini.move").setup()
		require("mini.splitjoin").setup()
		require("mini.surround").setup()
		require("mini.sessions").setup()
	end,
}
