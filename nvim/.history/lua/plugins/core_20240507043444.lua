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
        -- opts.section.header.val = vim.split(logo, "\n", { trimepty = true })
        require("alpha").setup {
          section = {
            header = {
              val = vim.split(logo, "\n", true ),
              opts = {
                hl = "AlphaHeader",
              },
            },
          },
        }
    end
  },
}
