return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      local telescope = require("telescope")
      telescope.setup({
        pickers = {
          buffers = {
            initial_mode = "normal",
            sort_mru = true,
            theme = "dropdown",
            -- disable previewer
            previewer = false,
            -- disable prompt search
            mappings = {
              n = {
                ["<c-d>"] = require("telescope.actions").delete_buffer,
                -- pin buffers
                -- ["<c-p>"] = require("bufferline.api").toggle_pin,
                -- ["<c-s>"] = require("telescope.actions").open_hsplit,
                -- ["<c-v>"] = require("telescope.actions").open_vsplit,
              },
            },
            layout_config = {
              horizontal = {
                prompt_position = "top",
              },
              -- shorter width like vscode
              width = 0.7,
            },
          },
          find_files = {},
        },
        defaults = {
          prompt_prefix = "🔍",

          layout_strategy = "horizontal",
          sorting_strategy = "ascending",
          winblend = 0,

          layout_config = {
            horizontal = {
              prompt_position = "top",
              preview_width = 0.55,
              results_width = 0.8,
            },
            vertical = {
              mirror = false,
            },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
          },

          path_display = {
            filename_first = {
              reverse_directories = false,
            },
          },
          sort_mru = true,
        },
      })
      return opts
    end,
  },
}
