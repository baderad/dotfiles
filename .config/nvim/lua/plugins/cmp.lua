return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "default",
        ["<S-Tab>"] = { "select_prev", "fallback" },
        ["<Tab>"] = { "select_next", "fallback" },
        ["<C-j>"] = { "select_and_accept" },
      },
      completion = {
        ghost_text = {
          enabled = false,
        },
        list = { selection = { preselect = false, auto_insert = false } },
        menu = { border = "rounded" },
        documentation = { window = { border = "rounded" } },
      },
    },
  },
}
