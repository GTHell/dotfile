return { -- add gruvbox
  { "catppuccin/nvim", name = "catppuccin", priority = 1000, config = require("catppuccin").setup() },
  { "ellisonleao/gruvbox.nvim" },
  { "Mofiqul/vscode.nvim" },
  {
    "navarasu/onedark.nvim",
    opts = {
      -- transparent = true,
      -- availalble theme
      -- dark, darker, cool, deep, warm, warmer, light
      style = "darker",
      ending_tildes = true,
    },
  },
  -- best transparent colorscheme
  -- onedark cool, deep
  -- catppucin latte
  -- vscode
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme "gruvbox",
      -- colorscheme = "catppuccin-mocha",
      -- colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
      -- colorscheme = "vscode",
      colorscheme = "catppuccin-frappe",
    },
  }, -- { import = "lazyvim.plugins.extras.ui.mini-starter" },
}
