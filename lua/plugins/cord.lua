return {
  "vyfor/cord.nvim",
  build = ":Cord update",
  config = function()
    require("cord").setup {
      editor = {
        client = "neovim",
        tooltip = "Syrh Syr G dey thone tk Text Editor",
        icon = nil,
      },
      display = {
        theme = "catppuccin",
        flavor = "dark",
        view = "full",
        swap_fields = false,
        swap_icons = false,
      },
    }
  end,
}
