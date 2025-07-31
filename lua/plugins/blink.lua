return
{
  'saghen/blink.cmp',
  event = 'LspAttach',
  version = '1.*',
  dependencies = { "fang2hou/blink-copilot" },
  opts = {
    keymap = {
      preset = 'none',
      ['<CR>'] = { 'select_and_accept', 'fallback' },
      ['<C-n>'] = { 'select_next', 'fallback' },
      ['<C-p>'] = { 'select_prev', 'fallback' },
      ['<C-h>'] = { 'hide', 'fallback' },
      ['<C-space>'] = { 'show', 'fallback' },
    },
    appearance = {
      nerd_font_variant = 'mono'
    },
    completion = {
      documentation = {
        auto_show = false
      }
    },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer', 'copilot' },
      providers = {
        copilot = {
          name = "copilot",
          module = "blink-copilot",
          score_offset = -100,
          async = true,
        },
      },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }
}
