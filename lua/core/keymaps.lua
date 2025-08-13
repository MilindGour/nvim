local h = require("core.helper")
-- All the general keymaps should be here

-- leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable space in normal mode
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Clear Search highlights on <Esc>
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { silent = true, desc = "Clear Search Highlight" })

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })

-- general window movements
h.nmap("<C-h>", "<C-w>h", { desc = "Move to left window" })
h.nmap("<C-l>", "<C-w>l", { desc = "Move to right window" })
h.nmap("<C-j>", "<C-w>j", { desc = "Move to lower window" })
h.nmap("<C-k>", "<C-w>k", { desc = "Move to upper window" })

-- buffer movements
h.nmap("H", "<cmd>bprev<CR>", { desc = "Move to previous buffer" })
h.nmap("L", "<cmd>bnext<CR>", { desc = "Move to next buffer" })
h.nmap("<leader><Tab>", "<cmd>b#<CR>", { desc = "Move to alternate buffer" })

-- Diagnostics
h.nmap("<leader>D", vim.diagnostic.open_float, { desc = "Open Diagnostics" })

-- Toggle line wrapping
vim.keymap.set("n", "<leader>lw", function()
	vim.o.wrap = not vim.o.wrap
	if vim.o.wrap then
		print("Line wrap enabled")
	else
		print("Line wrap disabled")
	end
end)
