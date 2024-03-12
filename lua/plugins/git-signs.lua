return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require('gitsigns').setup()
    vim.keymap.set('n', '<leader>gd', '<Cmd>Gitsigns preview_hunk<Cr>')
  end
}
