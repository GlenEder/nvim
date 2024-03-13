
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set nowrap")
-- This is macOS and Windows specific, for linux -> unnamedplus
vim.cmd("set clipboard=unnamed")
vim.lsp.set_log_level("debug")

vim.g.mapleader = " "
-- Move to window using the arrow keys and leader l/r 
vim.keymap.set("n", "<leader>l", "<C-w>h")
vim.keymap.set("n", "<leader>r", "<C-w>l")
vim.keymap.set("n", "<left>", "<C-w>h")
vim.keymap.set("n", "<down>", "<C-w>j")
vim.keymap.set("n", "<up>", "<C-w>k")
vim.keymap.set("n", "<right>", "<C-w>l")
vim.keymap.set("n", "<leader>tt", "<Cmd>vs | terminal<Cr>")
