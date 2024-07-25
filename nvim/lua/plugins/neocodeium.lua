return {
  {
    "monkoose/neocodeium",
    -- disable
    -- enabled = false,
    event = "VeryLazy",
    config = function()
      local neocodeium = require("neocodeium")
      neocodeium.setup()
    end,
  },
}
