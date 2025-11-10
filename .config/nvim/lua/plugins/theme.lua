return {
  {
    "tinted-theming/tinted-vim",
    lazy = false,
    name = "tinted-vim",
    priority = 1000,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    opts = {
      no_italic = true,
      transparent_background = false,
      color_overrides = {
        mocha = {
          base = "#15151f",
          mantle = "#11111a",
          crust = "#0d0d14",
        },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "base16-classic-dark",
      colorscheme = "catppuccin",
    },
  },
}
