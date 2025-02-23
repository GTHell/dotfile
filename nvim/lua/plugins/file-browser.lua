return {
  "nvim-telescope/telescope-file-browser.nvim",
  -- Browse FIle fb
  keys = {
    {
      "<leader>fB",
      ":Telescope file_browser path=%:p:h=%:p:h<cr>",
      desc = "File Browser",
    },
  },
  config = function()
    require("telescope").load_extension("file_browser")
  end,
}
