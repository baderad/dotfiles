return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
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
        update_in_insert = false,
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
              },
              cargo = {
                allFeatures = true,
              },
              checkOnSave = {
                command = "clippy",
              },
              inlayHints = {
                enable = false,
              },
              semanticHighlighting = true,
            },
          },
        },
      },
    },
  },
  --[[ {
    "Saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    opts = {
      completion = {
        crates = {
          enabled = true,
        },
      },
      lsp = {
        enabled = true,
        actions = true,
        completion = true,
        hover = true,
      },
    },
  }, ]]
}
