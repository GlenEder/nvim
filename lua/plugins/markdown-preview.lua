vim.pack.add{
  {
    name = 'markdown_preview',
    src = 'https://github.com/selimacerbas/markdown-preview.nvim',
  },

  -- dependencies
  'https://github.com/selimacerbas/live-server.nvim',
}

require('markdown_preview').setup()
