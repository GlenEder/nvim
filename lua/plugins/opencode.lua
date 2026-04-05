vim.pack.add{
  {
    name = 'opencode',
    src = 'https://github.com/sudo-tee/opencode.nvim',
  },
  -- dependices 
  'https://github.com/nvim-lua/plenary.nvim',
  {
    src = 'https://github.com/MeanderingProgrammer/render-markdown.nvim',
    opts = {
      anti_conceal = { enabled = false },
      file_types = { 'markdown', 'opencode_output' },
    },
    ft = { 'markdown', 'Avante', 'copilot-chat', 'opencode_output' },
  },
  'https://github.com/saghen/blink.cmp',
  'https://github.com/folke/snacks.nvim',
}

require('opencode').setup({
   default_global_keymaps = false, -- If false, disables all default global keymaps
   keymap = {
     editor = {
       ['<leader>oc'] = { 'toggle' },
       ['<leader>cc'] = { 'open_input' },
       ['<leader>ck'] = { 'quick_chat', mode = { 'n', 'x' } }, -- Open quick chat input with selection context in visual mode or current line context in normal mode
     },
   },
})
