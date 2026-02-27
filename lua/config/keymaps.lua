vim.g.mapleader = " "
-- Move to window using the arrow keys and leader l/r
vim.keymap.set("n", "<leader>l", "<C-w>h")
vim.keymap.set("n", "<leader>r", "<C-w>l")
vim.keymap.set("n", "<leader>s", "<C-w>x")
vim.keymap.set("n", "<leader>u", "<C-w>k")
vim.keymap.set("n", "<leader>d", "<C-w>j")
vim.keymap.set("n", "<left>", "<C-w>h")
vim.keymap.set("n", "<down>", "<C-w>j")
vim.keymap.set("n", "<up>", "<C-w>k")
vim.keymap.set("n", "<right>", "<C-w>l")
vim.keymap.set("n", "<leader>fc", "gg=G")

-- Lsp settings
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', '<leader>vd', vim.lsp.buf.definition, {})
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.declaration, {})
vim.keymap.set('n', '<leader>fr', function() require('telescope.builtin').lsp_references() end,
  { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set('n', '<leader>ne', vim.diagnostic.goto_next, {})
vim.keymap.set('n', '<leader>pe', vim.diagnostic.goto_prev, {})


-- Quality of life improvements
vim.keymap.set("n", "<leader>cp", "<Cmd>let @*=expand('%:p')<CR>", { desc = "Copy full filepath to clipboard" })
vim.keymap.set("n", "<leader>cs", "<CMD>noh<CR>", { desc = "Clear search highlighting" })
vim.keymap.set('n', '<leader>va', 'ggVG', { desc = 'Select entire file' })

