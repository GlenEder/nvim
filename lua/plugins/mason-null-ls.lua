return {
  "jay-babu/mason-null-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "nvimtools/none-ls.nvim",
  },
  config = function()
    require("mason-null-ls").setup({
      ensure_installed = {
        "stylua",
        "markdownlint",
        "shellcheck",
        "dockerfilelint",
        "yamllint",
        "jsonlint",
        "eslint",
        "prettier",
        "gofmt",
      },
    })

    -- setup formatting keybind
    vim.keymap.set('n', '<leader>ff', vim.lsp.buf.format, {})
  end,


}
