return {
	"stevearc/conform.nvim",
	event = "BufReadPre",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				go = { "goimports", "gofmt" },
				svelte = { "prettier" },
			},
			format_on_save = {
				timeout_ms = 2000,
				lsp_format = "fallback",
			},
		})
	end,
}
