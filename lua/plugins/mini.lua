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
		require("mini.files").setup()

		vim.keymap.set("n", "<leader>E", function()
			MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
		end, { desc = "Open MiniFiles Explorer" })
	end,
}
