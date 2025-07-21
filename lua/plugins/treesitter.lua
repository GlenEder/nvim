return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {
        "lua",
        "javascript",
        "java",
        "bash",
        "cpp",
        "c",
        "cmake",
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
