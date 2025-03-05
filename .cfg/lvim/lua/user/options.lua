-- General settings
lvim.log.level = "warn"
lvim.format_on_save.enabled = true

-- Set the colorscheme
--lvim.colorscheme = "onedark"
-- lvim.colorscheme = "kanagawa"
lvim.colorscheme = "gruvbox-material"

-- Customize Gruvbox Material options
vim.g.gruvbox_material_background = "hard"    -- Choose the "hard" contrast
vim.g.gruvbox_material_palette = "material"   -- Use the material palette
vim.g.gruvbox_material_enable_italic = 1      -- Enable italic text
vim.g.gruvbox_material_better_performance = 1 -- Optimize for performance

vim.keymap.set("n", "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = " "
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.wrap = true
vim.opt.undofile = true
vim.opt.colorcolumn = '100'
vim.keymap.set('n', '<leader>;', '<cmd>Buffers<cr>')
vim.keymap.set('n', '<leader>w', '<cmd>w<cr>')
-- <leader><leader> toggles between buffers
vim.keymap.set('n', '<leader><leader>', '<c-^>')
-- no arrow keys --- force yourself to use the home row
vim.keymap.set('n', '<up>', '<nop>')
vim.keymap.set('n', '<down>', '<nop>')
-- vim.keymap.set('i', '<up>', '<nop>')
-- vim.keymap.set('i', '<down>', '<nop>')
-- vim.keymap.set('i', '<left>', '<nop>')
-- vim.keymap.set('i', '<right>', '<nop>')
-- let the left and right arrows be useful: they can switch buffers
vim.keymap.set('n', '<left>', ':bp<cr>')
vim.keymap.set('n', '<right>', ':bn<cr>')
