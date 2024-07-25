return {
  {
    "smoka7/hop.nvim",
    version = "*",
    opts = function(opts, _)
      opts.keys = "etovxqpdygfblzhckisuran"
      opts.case_insensitive = true
      opts.multi_windows = true
      opts.hl_mode = "replace"

      return opts
    end,
  },
}
