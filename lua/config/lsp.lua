-- ESLint lints only (repo config drives the rules); leave formatting to vtsls
vim.lsp.config('eslint', { settings = { format = false } })

vim.lsp.enable({
  'bashls',
  'clangd',
  'lua_ls',
  'vtsls',
  'eslint',
  'bicep_ls',
  'terraform_ls',
})

-- LSP settings
--vim.lsp.set_log_level('debug')
vim.opt.autocomplete = true
vim.opt.signcolumn = 'yes:1'
vim.opt.complete = 'o'
vim.opt.completeopt = {
  'fuzzy',
  'menu',
  'menuone',
  'noselect',
  'popup',
}

vim.diagnostic.config({
  --virtual_lines = true,
  -- virtual_text = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = 'rounded',
    source = true,
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '󰅚 ',
      [vim.diagnostic.severity.WARN] = '󰀪 ',
      [vim.diagnostic.severity.INFO] = '󰋽 ',
      [vim.diagnostic.severity.HINT] = '󰌶 ',
    },
    numhl = {
      [vim.diagnostic.severity.ERROR] = 'ErrorMsg',
      [vim.diagnostic.severity.WARN] = 'WarningMsg',
    },
  },
})


-- setup lsp file formatting on save
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    -- grab the lsp client
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if not client then return end
    if client.supports_method('textDocument/formatting') then
      vim.api.nvim_create_autocmd('BufWritePre', {
        buffer = args.buf,
        callback = function()
          vim.lsp.buf.format({ bufnr = args.buf, id = client.id, })
        end,
      })
    end
  end,
})

-- On save of JS/TS-ish files: apply the repo's ESLint rules.
-- The eslint client only attaches when the repo has an ESLint config, so
-- these are no-ops elsewhere.
local js_ts_patterns = { '*.ts', '*.tsx', '*.js', '*.jsx', '*.mjs', '*.cjs', '*.mts', '*.cts' }

-- auto-fix (the repo's auto-fixable rules) before writing
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = js_ts_patterns,
  callback = function(args)
    for _, client in ipairs(vim.lsp.get_clients({ bufnr = args.buf, name = 'eslint' })) do
      if client:supports_method('workspace/executeCommand') then
        client:request_sync('workspace/executeCommand', {
          command = 'eslint.applyAllFixes',
          arguments = {
            { uri = vim.uri_from_bufnr(args.buf), version = vim.lsp.util.buf_versions[args.buf] },
          },
        })
      end
    end
  end,
})

-- No explicit re-lint needed on save: the eslint server re-lints on
-- didChange and via willSaveWaitUntil on save (it has no "textDocument/lint" method).

-- Toggle HarperLS LSP
function ToggleHarperLS()
  local clients = vim.lsp.get_active_clients({ name = 'harper_ls' })
  if #clients > 0 then
    for _, client in ipairs(clients) do
      vim.lsp.stop_client(client.id)
    end
    print('HarperLS stopped')
  else
    vim.lsp.enable({
      'harper_ls',
    })
    vim.cmd('edit') -- reload buffer to attach LSP
    print('HarperLS started')
  end
end

vim.keymap.set('n', '<leader>sc', ToggleHarperLS, { desc = 'Toggle HarperLS' })
