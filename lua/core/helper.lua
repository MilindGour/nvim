-- This module provides some helper functions

local M = {}

---This function sets keymap in normal mode.
---@param lhs string
---@param rhs string|function
---@param ops vim.keymap.set.Opts
function M.nmap(lhs, rhs, ops)
	local mergedOpts = { noremap = true, silent = true, desc = "Default" }
	for k, v in pairs(ops) do
		mergedOpts[k] = v
	end

	vim.keymap.set("n", lhs, rhs, mergedOpts)
end

return M
