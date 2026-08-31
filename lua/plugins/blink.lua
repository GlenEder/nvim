vim.pack.add({ 'saghen/blink.lib', 'saghen/blink.cmp' })
local cmp = require('blink.cmp')
cmp.build():wait(60000)
cmp.setup({
})
