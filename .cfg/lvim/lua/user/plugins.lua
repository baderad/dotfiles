lvim.plugins = {
  -- {
  --   "rebelot/kanagawa.nvim", -- Kanagawa theme plugin
  --   lazy = false,            -- Load immediately
  --   priority = 1000,         -- Ensure it loads first
  --   config = function()
  --     require("kanagawa").setup({
  --       background = {
  --         dark = "dragon"
  --       }
  --     })
  --     vim.cmd("colorscheme kanagawa")
  --   end,
  -- },
  {
    "sainnhe/gruvbox-material", -- Plugin for Gruvbox Material
  },
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").on_attach()
    end,
  },
}

vim.diagnostic.config({
  virtual_text = false
})

-- Rust
require("lvim.lsp.manager").setup("rust_analyzer", {
  on_attach = function(client, bufnr)
    -- Ensure diagnostics settings only apply to the Rust buffer
    vim.diagnostic.config({
      virtual_text = false, -- Disable inline diagnostics
      signs = true,         -- Keep diagnostic signs
      underline = true,     -- Keep underline for issues
      update_in_insert = false,
    }, bufnr)
  end,
  settings = {
    ["rust-analyzer"] = {
      diagnostics = {
        enable = true
      },
      cargo = {
        allFeatures = true,
      },
      checkOnSave = {
        command = "clippy",
      },
      inlayHints = {
        enable = true,
      },
      semanticHighlighting = true, -- Enable semantic highlighting
    },
  },
})

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
  {
    command = "rustfmt",
    filetypes = { "rust" },
  },
})

-- Custom syntax highlighting for cargo output
-- local function setup_cargo_syntax()
--   vim.cmd([[
--         syntax match CargoError /\v(error:.*)/
--         highlight CargoError ctermfg=Red guifg=Red

--         syntax match CargoWarning /\v(warning:.*)/
--         highlight CargoWarning ctermfg=Yellow guifg=Yellow

--         syntax match CargoInfo /\v(\[INFO\].*)/
--         highlight CargoInfo ctermfg=Blue guifg=Blue

--         syntax match CargoSuccess /\v(finished.*)/
--         highlight CargoSuccess ctermfg=Green guifg=Green
--     ]])
-- end


-- Function to display cargo output with syntax highlighting
-- local function display_cargo_output(command)
--   vim.cmd("vnew | setlocal nobuflisted")
--   vim.bo.filetype = "cargo_output" -- Assign a custom filetype

--   local job = vim.fn.jobstart(command, {
--     stdout_buffered = true,
--     stderr_buffered = true,
--     on_stdout = function(_, data)
--       if data then
--         vim.api.nvim_buf_set_lines(0, -1, -1, false, data)
--       end
--     end,
--     on_stderr = function(_, data)
--       if data then
--         vim.api.nvim_buf_set_lines(0, -1, -1, false, data)
--       end
--     end,
--     on_exit = function()
--       vim.api.nvim_buf_set_lines(0, -1, -1, false, { "", "Command Complete" })
--       -- Move cursor to the bottom of the buffer
--       local last_line = vim.api.nvim_buf_line_count(0)
--       vim.api.nvim_win_set_cursor(0, { last_line, 0 })
--     end,
--   })

--   if job <= 0 then
--     vim.api.nvim_err_writeln("Failed to start process: " .. command)
--     return
--   end

--   -- Apply syntax highlighting
--   setup_cargo_syntax()

--   -- Set the buffer to be focused and exitable with 'q'
--   vim.bo.buftype = "nofile"
--   vim.bo.bufhidden = "wipe"
--   vim.bo.swapfile = false
--   vim.api.nvim_buf_set_keymap(0, "n", "q", ":close<CR>", { noremap = true, silent = true })
-- end
-- -- Custom commands for Rust
-- vim.api.nvim_create_user_command("RustBuild", function()
--   display_cargo_output("cargo build")
-- end, {})

-- vim.api.nvim_create_user_command("RustRun", function()
--   display_cargo_output("cargo run")
-- end, {})
