return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },

  -- dashboard specs
  {
    "nvimdev/dashboard-nvim",
    -- setup local logo
    opts = {
      setup = function()
        vim.g.dashboard_custom_header = {
          "logo"
            .. "  ███╗   ██╗ ███████╗ ██████╗  ██████╗ ████████╗", -- 1
          "  ████╗  ██║ ██╔════╝ ██╔══██╗ ██╔══██╗╚══██╔══╝", -- 2
          "  ██╔██╗ ██║ █████╗   ██████╔╝ ██████╔╝   ██║   ", -- 3
          "  ██║╚██╗██║ ██╔══╝   ██╔══██╗ ██╔══██╗   ██║   ", -- 4
          "  ██║ ╚████║ ███████╗ ██║  ██║ ██████╔╝   ██║   ", -- 5
          "  ╚═╝  ╚═══╝ ╚══════╝ ╚═╝  ╚═╝ ╚═════╝    ╚═╝   ", -- 6
        }
      end,
    },
  },
}
