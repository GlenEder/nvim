vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
-- This is macOS and Windows specific, for linux -> unnamedplus
vim.opt.clipboard = "unnamed"
vim.opt.ignorecase = true
vim.opt.smartcase = true


-- LSP settings
--vim.lsp.set_log_level("debug")
vim.opt.completeopt = {
  "menu",
  "menuone",
  "noselect",
  "popup",
}

-- disable copilot tab mapping
vim.g.copilot_no_tab_map = true
