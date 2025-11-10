-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- ColorScheme adjustments
vim.api.nvim_create_autocmd("User", {
	pattern = "VeryLazy",
	callback = function()
		vim.o.background = "dark"
		-- vim.cmd.colorscheme("catppuccin")
		-- vim.api.nvim_set_hl(0, "Comment", { fg = "#d7af5f" })
		vim.api.nvim_set_hl(0, "Comment", { fg = "#89dceb" })
	end,
})

-- Remove markdown files from diagnostics.
vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.diagnostic.enable(false, { bufnr = 0 })
	end,
})
