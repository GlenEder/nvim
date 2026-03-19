return {
  "otaleghani/dwight.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("dwight").setup({
      backend = "opencode",     -- or "codex", "gemini", "opencode"
      api_key = "$OPENCODE_API_KEY", 
    })
  end,
}
