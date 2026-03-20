return {
  "sudo-tee/opencode.nvim",
  config = function()
    require("opencode").setup({
      default_global_keymaps = false, -- If false, disables all default global keymaps
       keymap = {
         editor = {
           ['<leader>co'] = { 'toggle' },
           ['<leader>cc'] = { 'open_input' },
           ['<leader>ck'] = { 'quick_chat', mode = { 'n', 'x' } }, -- Open quick chat input with selection context in visual mode or current line context in normal mode
         },
       },
    })
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        anti_conceal = { enabled = false },
        file_types = { 'markdown', 'opencode_output' },
      },
      ft = { 'markdown', 'Avante', 'copilot-chat', 'opencode_output' },
    },
    'saghen/blink.cmp',
    'nvim-telescope/telescope.nvim',
  },
}
