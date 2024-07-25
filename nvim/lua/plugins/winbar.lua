return {
  {
    "ramilito/winbar.nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("winbar").setup({
        icons = true,
        diagnostic = true,
        buf_modified = true,
      })
    end,
  },
}
