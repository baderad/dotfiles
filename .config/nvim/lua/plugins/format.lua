return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        rust = { "cargo fmt" }, -- Use rustfmt for Rust files
        sql = { "sqlfluff" },
      },
      formatters = {
        sqlfluff = {
          args = { "format", "--dialect=postgres", "-" },
        },
      },
    },
  },
}
