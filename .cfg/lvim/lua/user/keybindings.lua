-- lvim.builtin.which_key.mappings["mb"] = { ":RustBuild<CR>", "Rust Build" }
-- lvim.builtin.which_key.mappings["mr"] = { ":RustRun<CR>", "Rust Run" }

lvim.builtin.which_key.mappings["f"] = {
  name = "Find", -- This groups commands under "Find"
  r = { "<cmd>Telescope lsp_references<CR>", "Find References" },
  e = { "<cmd>Telescope diagnostics<CR>", "Find Errors" },
  f = { "<cmd>Telescope find_files<CR>", "Find Files" },
  g = { "<cmd>Telescope live_grep<CR>", "Find Text" },
}

lvim.keys.normal_mode["<space>."] = "<cmd>Telescope find_files<CR>"

lvim.builtin.which_key.mappings['e'] = {}
lvim.builtin.which_key.mappings['q'] = {}
lvim.builtin.which_key.mappings["o"] = { "<cmd>NvimTreeToggle<CR>", "Explorer" }
--vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
lvim.keys.normal_mode["<leader>e"] = vim.diagnostic.open_float
lvim.keys.normal_mode["<leader>q"] = vim.diagnostic.setloclist
