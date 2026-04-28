vim.pack.add{
  {
    name = 'toggleterm',
    src = 'https://github.com/akinsho/toggleterm.nvim',
  }
}

require("toggleterm").setup({
  open_mapping = [[<c-t>]],
  insert_mappings = false,
  direction = 'float',
  float_opts = {
    border = 'curved',
    width = 120,
    height = 30,
  },
})
