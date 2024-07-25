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
    "nvimdev/dashboard-nvim",
    -- setup local logo
    config = function()
        local logo = [[
          logo,
            ███╗   ██╗ ███████╗ ██████╗  ██████╗ ████████╗
            ████╗  ██║ ██╔════╝ ██╔══██╗ ██╔══██╗╚══██╔══╝
            ██╔██╗ ██║ █████╗   ██████╔╝ ██████╔╝   ██║   
            ██║╚██╗██║ ██╔══╝   ██╔══██╗ ██╔══██╗   ██║   
            ██║ ╚████║ ███████╗ ██║  ██║ ██████╔╝   ██║   
            ╚═╝  ╚═══╝ ╚══════╝ ╚═╝  ╚═╝ ╚═════╝    ╚═╝   
        ]]
        
        logo = string.rep("\n", 8) .. logo .. "\n\n"

        local opts = {
          config = {
            header = vim.split(logo, "\n"),
          },
        },
    end
  },
}
