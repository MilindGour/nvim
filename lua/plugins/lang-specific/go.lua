return {
	"ray-x/go.nvim",
	dependencies = { -- optional packages
		"ray-x/guihua.lua",
		"neovim/nvim-lspconfig",
		"nvim-treesitter/nvim-treesitter",
	},
	opts = {
		-- lsp_keymaps = false,
		-- other options
	},
	keys = {
		{ "<leader>c1", "<cmd>GoTestFunc<CR>", { desc = "Go: Test Function" } },
		{ "<leader>c2", "<cmd>GoAddAllTest<CR>", { desc = "Go: Add All Tests" } },
		{ "<leader>c3", "<cmd>GoAddTest<CR>", { desc = "Go: Add Test" } },
		{ "<leader>c4", "<cmd>GoAlt<CR>", { desc = "Go: Goto Alt" } },
		{ "<leader>cf", "<cmd>GoFillStruct<CR>", { desc = "Go: Fill struct" } },
	},
	config = function(lp, opts)
		require("go").setup(opts)
		local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*.go",
			callback = function()
				require("go.format").goimports()
			end,
			group = format_sync_grp,
		})
	end,
	ft = { "go", "gomod" },
	build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
}
