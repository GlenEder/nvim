vim.pack.add{
  {
    name = 'lualine',
    src = 'https://github.com/nvim-lualine/lualine.nvim',
    opt = {
      theme = 'dracula',
    }
  },
  -- dependencies 
  'https://github.com/nvim-tree/nvim-web-devicons',
}

require('lualine').setup()

