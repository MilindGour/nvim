-- Include core files here
require("core.keymaps")
require("core.options")
require("core.autocmds")

-- Set up the Lazy plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Set up plugins
require("lazy").setup({
	require("plugins.themes.catppuccin"), -- Current theme
	require("plugins.neotree"), -- File explorer on the right <leader-e>
	require("plugins.bufferline"), -- Tabs on the top
	require("plugins.telescope"), -- Telescope, bruh! Open files quickly
	require("plugins.indent-blankline"), -- Indent lines in editor
	require("plugins.dial"), -- Toggle true/false, numbers etc.
	require("plugins.lsp"), -- Toggle true/false, numbers etc.
	require("plugins.blink"), -- Autocompletion engine
	require("plugins.conform"), -- Formatter
	require("plugins.which-key"), -- Display keymap on screen.
	require("plugins.gitsigns"), -- Git Signs
	require("plugins.misc"), -- Misc plugins
	require("plugins.mini"), -- Mini plugins
	require("plugins.snacks"), -- Snacks plugins
	require("plugins.lualine"), -- Lua line status bar
	require("plugins.treesitter"), -- Treesitter for syntax better highlighting
	require("plugins.noice"), -- Replacing commandline with popups
	require("plugins.flash"), -- Flash search
	require("plugins.vim-tmux-navigator"), -- Vim Tmux hjkl keys

	-- Language specific plugins
	require("plugins.lang-specific.go"),
})
