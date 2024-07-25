return {
  "scottmckendry/cyberdream.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("cyberdream").setup({
      transparent = true,
      italic_comments = true,
      hide_fillchars = true,
      terminal_colors = true,
      theme = {
        variant = "default",
        highlights = {
          -- Highlight groups to override, adding new groups is also possible
          -- See `:h highlight-groups` for a list of highlight groups or run `:hi` to see all groups and their current values

          -- Example:
          Comment = { fg = "#696969", bg = "NONE", italic = true },

          -- Complete list can be found in `lua/cyberdream/theme.lua`
        },

        -- Override a color entirely
        -- colors = {
        --   -- For a list of colors see `lua/cyberdream/colours.lua`
        --   -- Example:
        --   bg = "#000000",
        --   green = "#00ff00",
        --   magenta = "#ff00ff",
        -- },
      },
    })
    -- vim.cmd.colorscheme("colorscheme onedark")
    vim.api.nvim_set_hl(0, "FloatTitle", { bg = "NONE" })
  end,
}
