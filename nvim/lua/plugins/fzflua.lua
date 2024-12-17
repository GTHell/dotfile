return {
  {
    "ibhagwan/fzf-lua",

    opts = function(_, opts)
      return vim.tbl_deep_extend("force", defaults, {
        defaults = {
          formatter = "path.filename_first",
          -- formatter = "path.dirname_first",
        },
      })
    end,
  },
}
