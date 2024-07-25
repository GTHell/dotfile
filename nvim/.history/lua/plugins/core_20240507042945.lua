return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
  -- { import = "lazyvim.plugins.extras.ui.mini-starter" },

  -- dashboard specs
  {
    "goolord/alpha-nvim",
    -- setup local logo
    opts = {
        local logo = [[
          logo,
            ███╗   ██╗ ███████╗ ██████╗  ██████╗ ████████╗
            ████╗  ██║ ██╔════╝ ██╔══██╗ ██╔══██╗╚══██╔══╝
            ██╔██╗ ██║ █████╗   ██████╔╝ ██████╔╝   ██║   
            ██║╚██╗██║ ██╔══╝   ██╔══██╗ ██╔══██╗   ██║   
            ██║ ╚████║ ███████╗ ██║  ██║ ██████╔╝   ██║   
            ╚═╝  ╚═══╝ ╚══════╝ ╚═╝  ╚═╝ ╚═════╝    ╚═╝   
        ]]
    },
  },
}
