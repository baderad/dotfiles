return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false }, -- Disable inline errors
      diagnostics = {
        virtual_text = false, -- Disable inline errors
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = LazyVim.config.icons.diagnostics.Error,
            [vim.diagnostic.severity.WARN] = LazyVim.config.icons.diagnostics.Warn,
            [vim.diagnostic.severity.HINT] = LazyVim.config.icons.diagnostics.Hint,
            [vim.diagnostic.severity.INFO] = LazyVim.config.icons.diagnostics.Info,
          },
        },
        underline = true,
        update_in_insert = true,
      },
      servers = {
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              formatting = {
                enable = true,
              },
              procMacro = { enable = true },
              diagnostics = {
                enable = true,
                -- enable = false,
              },
              cargo = {
                allFeatures = true,
              },
              checkOnSave = {
                --[[ command = nil,
                enable = false, ]]
                command = "clippy",
                enable = true,
              },
              inlayHints = {
                enable = false,
              },
              semanticHighlighting = true,
            },
          },
        },
        bacon_ls = {
          enabled = false,
        },
      },
    },
  },
  {
    "Saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    opts = {
      lsp = {
        enabled = false,
      },
    },
  },
}
