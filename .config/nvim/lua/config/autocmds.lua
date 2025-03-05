-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- ColorScheme adjustments
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    -- Yellow comments
    vim.api.nvim_set_hl(0, "Comment", { fg = "#d7af5f" })
    -- vim.api.nvim_set_hl(0, "@comment", { fg = "#d7af5f" })
  end,
})
