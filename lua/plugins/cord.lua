return {
  "vyfor/cord.nvim",
  name = "cord",
  lazy = false,
  build = ":Cord update",
  opts = {},
  config = function(_, opts)
    require('cord').setup(opts)
  end,
}

