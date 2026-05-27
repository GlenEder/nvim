vim.pack.add{
  {
    name = 'diff-view',
    src = 'https://github.com/sindrets/diffview.nvim',
  },

  -- optional dependency
  'https://github.com/nvim-tree/nvim-web-devicons',
}

-- keymaps for diff views 
vim.keymap.set('n', '<leader>dvo', '<Cmd>DiffviewOpen<Cr>')
vim.keymap.set('n', '<leader>dvc', '<Cmd>DiffviewClose<Cr>')
vim.keymap.set('n', '<leader>dvt', '<Cmd>DiffviewToggleFiles<Cr>')
vim.keymap.set('n', '<leader>dvr', '<Cmd>DiffviewRefresh<Cr>')

-- open diffview of current system against the main repo branch 
vim.keymap.set("n", "<leader>dvm", function()
  local handle = io.popen("git symbolic-ref refs/remotes/origin/HEAD | xargs basename")
  local branch = handle:read("*a"):gsub("\n", "")
  handle:close()
  
  if branch ~= "" then
    vim.cmd("DiffviewOpen origin/" .. branch)
  else
    vim.notify("Could not determine remote main branch", vim.log.levels.WARN)
  end
end, { noremap = true, silent = true, desc = "Diffview: Open against origin main" })
