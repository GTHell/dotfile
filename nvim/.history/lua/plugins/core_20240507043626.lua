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
        
        logo = string.rep("\n", 8) .. logo .. "\n\n"
        require("dashboard.configs").setup {
          custom_header = {
            logo,
            -- Add other custom header elements if needed
          },
        }
    end
  },
}
