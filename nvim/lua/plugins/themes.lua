return { -- add gruvbox
  { "catppuccin/nvim", name = "catppuccin", priority = 1000, config = require("catppuccin").setup() },
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      terminal_colors = true, -- add neovim terminal colors
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = true,
        folds = true,
      },
      strikethrough = true,
      invert_selection = true,
      invert_signs = true,
      invert_tabline = true,
      invert_intend_guides = false,
      inverse = true, -- invert background for search, diffs, statuslines and errors
      contrast = "", -- can be "hard", "soft" or empty string
      palette_overrides = {},
      overrides = {},
      dim_inactive = false,
      transparent_mode = false,
    },
  },
  { "Mofiqul/vscode.nvim" },
  { "nyoom-engineering/oxocarbon.nvim" },
  {
    "rebelot/kanagawa.nvim",
    -- config = require("kanagawa").setup({
    --   compile = false, -- enable compiling the colorscheme
    --   undercurl = true, -- enable undercurls
    --   commentStyle = { italic = true },
    --   functionStyle = {},
    --   keywordStyle = { italic = true },
    --   statementStyle = { bold = true },
    --   typeStyle = {},
    --   transparent = false, -- do not set background color
    --   dimInactive = false, -- dim inactive window `:h hl-NormalNC`
    --   terminalColors = true, -- define vim.g.terminal_color_{0,17}
    --   colors = { -- add/modify theme and palette colors
    --     palette = {},
    --     theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    --   },
    --   overrides = function(colors) -- add/modify highlights
    --     return {}
    --   end,
    --   theme = "wave", -- Load "wave" theme when 'background' option is not set
    --   background = { -- map the value of 'background' option to a theme
    --     dark = "wave", -- try "dragon" !
    --     light = "lotus",
    --   },
    -- }),
  },
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
      -- colorscheme("gruvbox"),
      -- colorscheme = "catppuccin-mocha",
      -- colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
      -- colorscheme = "vscode",
      colorscheme = "catppuccin-frappe",
      -- colorscheme = "catppuccin-latte",
      -- colorscheme = "gruvbox",
    },
  }, -- { import = "lazyvim.plugins.extras.ui.mini-starter" },
}
