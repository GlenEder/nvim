-- Neovim's builtin SQL ftplugin sets omnifunc=sqlcomplete#Complete (a
-- legacy Vimscript completion function meant for manual <C-x><C-o> use
-- with dbext/dadbod). With 'autocomplete' on and 'o' in 'complete', it
-- gets invoked automatically on every keystroke in insert mode and
-- errors ("SQLComplete...") because it has no DB connection configured.
-- Disable the auto-popup for this buffer only; LSP-based autocomplete
-- elsewhere is unaffected.
vim.opt_local.autocomplete = false
