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
    opts = function()
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
    theme = "doom",
    hide = {
      -- this is taken care of by lualine
      -- enabling this messes up the actual laststatus setting after loading a file
      statusline = false,
    },
    config = {
      header = vim.split(logo, "\n"),
      -- stylua: ignore
      center = {
        { action = LazyVim.telescope("files"),                                    desc = " Find File",       icon = " ", key = "f" },
        { action = "ene | startinsert",                                        desc = " New File",        icon = " ", key = "n" },
        { action = "Telescope oldfiles",                                       desc = " Recent Files",    icon = " ", key = "r" },
        { action = "Telescope live_grep",                                      desc = " Find Text",       icon = " ", key = "g" },
        { action = [[lua LazyVim.telescope.config_files()()]], desc = " Config",          icon = " ", key = "c" },
        { action = 'lua require("persistence").load()',                        desc = " Restore Session", icon = " ", key = "s" },
        { action = "LazyExtras",                                               desc = " Lazy Extras",     icon = " ", key = "x" },
        { action = "Lazy",                                                     desc = " Lazy",            icon = "󰒲 ", key = "l" },
        { action = "qa",                                                       desc = " Quit",            icon = " ", key = "q" },
      },
      footer = function()
        local stats = require("lazy").stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
      end,
    },
  }
  return opts
        
    end
  },
}
