-- load nvim configs, these don't require / use any plugins 
require('config.options')
require('config.keymaps')

--[===[
Neovim External Plugins 
order matters here as load order handles dependencies
-- ]===]


-- editor theme / info display 
require('plugins.catppuccin')
require('plugins.gitblame')
require('plugins.fidget')
require('plugins.lualine')

-- file tree viewer
require('plugins.neo-tree')

-- fuzzy finder 
require('plugins.telescope')

-- lsp servers
require('plugins.nvim-lspconfig')
require('plugins.mason')
require('config.lsp') -- load the lsp servers 

-- Opencode AI
require('plugins.opencode')
