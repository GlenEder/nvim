vim.g.mapleader = " "
-- Move to window using the arrow keys and leader l/r
vim.keymap.set("n", "<leader>l", "<C-w>h")
vim.keymap.set("n", "<leader>r", "<C-w>l")
vim.keymap.set("n", "<left>", "<C-w>h")
vim.keymap.set("n", "<down>", "<C-w>j")
vim.keymap.set("n", "<up>", "<C-w>k")
vim.keymap.set("n", "<right>", "<C-w>l")
vim.keymap.set("n", "<leader>tt", "<Cmd>terminal<Cr>")
vim.keymap.set("n", "<leader>st", "<Cmd>vs | terminal<Cr>")
vim.keymap.set("n", "<leader>fc", "gg=G")

-- Lsp settings
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', '<leader>d', vim.lsp.buf.definition, {})
vim.keymap.set('n', '<leader>g', vim.lsp.buf.declaration, {})
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set('n', '<leader>ne', vim.diagnostic.goto_next, {})
vim.keymap.set('n', '<leader>pe', vim.diagnostic.goto_prev, {})

-- Change copilot keymap
vim.keymap.set('i', '<C-Enter>', 'copilot#Accept("\\<CR>")', { silent = true, expr = true, replace_keycodes = false })

-- copy file path to clipboard
vim.keymap.set("n", "<leader>cp", "<Cmd>let @*=expand('%:p')<CR>")
