-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.o.background = "dark"

vim.g.autoformat = true
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.wrap = true
vim.opt.undofile = true
vim.opt.colorcolumn = "100"
vim.o.hlsearch = false

vim.g.snacks_animate = false

vim.diagnostic.config({
	float = { border = "rounded" }, -- Options: "single", "double", "rounded", "shadow"
})

vim.g.dbs = {
	rethera_rs_dev = "postgresql://postgres:password@127.24.0.1:5432/rethera",
}

-- vim.g.lazyvim_rust_diagnostics = "bacon-ls"
vim.g.lazyvim_rust_diagnostics = "rust-analyzer"
