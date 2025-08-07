-- All the general keymaps should be here

-- leader keys
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- helper function
local opts = { noremap = true, silent = true }
local nmap = function(lhs, rhs, opts)
	vim.keymap.set('n', lhs, rhs, opts)
end

-- Disable space in normal mode
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- general window movements
nmap('<C-h>', '<C-w>h', opts)
nmap('<C-l>', '<C-w>l', opts)
nmap('<C-j>', '<C-w>j', opts)
nmap('<C-k>', '<C-w>k', opts)

-- buffer movements
nmap('H', '<cmd>bprev<CR>', opts)
nmap('L', '<cmd>bnext<CR>', opts)

-- Toggle line wrapping
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)
