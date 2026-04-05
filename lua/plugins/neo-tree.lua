vim.pack.add({
  {
    name = 'neo-tree',
    src = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
    version = vim.version.range('3')
  },
  -- dependencies
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
  'https://github.com/nvim-tree/nvim-web-devicons',
})

vim.keymap.set('n', '<leader>nt', '<Cmd>Neotree toggle<Cr>')


