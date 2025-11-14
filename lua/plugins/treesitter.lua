return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require "nvim-treesitter.configs"
    config.setup {
      auto_install = true,
      ensure_installed = { "lua", "rust", "zig", "go", "gomod", "gosum", "c", "cpp", "cmake", "typescript", "tsx", "javascript", "json", "markdown", "markdown_inline" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    }
  end,
}
