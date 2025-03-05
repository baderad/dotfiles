return {
  {
    "ibhagwan/fzf-lua",
    keys = {
      { "<leader>/", false },
      { "<leader><space>", "<c-^>", { desc = "Switch to last buffer", silent = true, noremap = true } },

      { "<leader>.", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
    },
  },
}
