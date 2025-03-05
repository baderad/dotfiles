-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = " "

vim.keymap.set("", "H", "^")
vim.keymap.set("", "L", "$")

vim.keymap.set("n", "<leader>;", "<cmd>Buffers<cr>")
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>")

-- <leader><leader> toggles between buffers
vim.keymap.set("n", "<leader><space>", "<c-^>", { desc = "Switch to last buffer", silent = true, noremap = true })

-- no arrow keys --- force yourself to use the home row
vim.keymap.set("n", "<up>", "<nop>")
vim.keymap.set("n", "<down>", "<nop>")
-- vim.keymap.set('i', '<up>', '<nop>')
-- vim.keymap.set('i', '<down>', '<nop>')
-- vim.keymap.set('i', '<left>', '<nop>')
-- vim.keymap.set('i', '<right>', '<nop>')
-- let the left and right arrows be useful: they can switch buffers
vim.keymap.set("n", "<left>", ":bp<cr>")
vim.keymap.set("n", "<right>", ":bn<cr>")

vim.keymap.set("n", "<leader>o", "<cmd>Neotree toggle<CR>", { desc = "Explorer" })
vim.keymap.set("n", "<leader>e", function()
  vim.diagnostic.open_float(0, { scope = "line" })
end, { desc = "Show error for current line" })
vim.keymap.set("n", "<leader>fe", "<cmd>FzfLua diagnostics_document<cr>", { desc = "Document Diagnostics" })
vim.keymap.set("n", "<leader>fE", "<cmd>FzfLua diagnostics_workspace<cr>", { desc = "Workspace Diagnostics" })
