return {
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup({
        delete_to_trash = true,
        default_file_explorer = true,
        skip_confirm_for_simple_edits = true,
        win_options = {
          winblend = 0,
        },
        view_options = {
          show_hidden = true,
        },
        columns = {
          "icon",
          "size",
        },
        float = {
          padding = 2,
          max_width = 50,
          max_height = 0,
          border = "single",
          win_options = {
            winblend = 0,
          },
        },
        keymaps = {
          ["<Esc>"] = { callback = "actions.close", mode = "n" },
          ["q"] = { callback = "actions.close", mode = "n" },
        },
      })
    end,
  },
}
