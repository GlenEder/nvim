-- load nvim configs, these don't require / use any plugins
require('config.options')
require('config.keymaps')

--[===[
Neovim External Plugins
order matters here as load order handles dependencies
-- ]===]


-- editor theme / info display
require('plugins.catppuccin')
require('plugins.fidget')
require('plugins.lualine')
require('plugins.blink')

-- markdown viewer
require('plugins.markdown-preview')

-- file tree viewer
require('plugins.neo-tree')

-- fuzzy finder
require('plugins.telescope')

-- terminal popup
require('plugins.toggle-term')

-- lsp servers
require('plugins.nvim-lspconfig')
require('plugins.mason')
require('config.lsp') -- load the lsp servers

-- git shit
require('plugins.gitsigns')
require('plugins.codediff')

-- Opencode AI
-- require('plugins.opencode')
