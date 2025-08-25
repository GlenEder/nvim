vim.lsp.enable({
  "bashls",
  "clangd",
  "lua_ls",
  "vtsls",
})

vim.diagnostic.config({
  --virtual_lines = true,
  -- virtual_text = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = true,
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "󰅚 ",
      [vim.diagnostic.severity.WARN] = "󰀪 ",
      [vim.diagnostic.severity.INFO] = "󰋽 ",
      [vim.diagnostic.severity.HINT] = "󰌶 ",
    },
    numhl = {
      [vim.diagnostic.severity.ERROR] = "ErrorMsg",
      [vim.diagnostic.severity.WARN] = "WarningMsg",
    },
  },
})


-- setup lsp file formatting on save
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    -- grab the lsp client
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if not client then return end
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = args.buf,
        callback = function()
          vim.lsp.buf.format({ bufnr = args.buf, id = client.id, })
        end,
      })
    end
  end,
})


-- Toggle HarperLS LSP
function ToggleHarperLS()
  local clients = vim.lsp.get_active_clients({ name = "harper_ls" })
  if #clients > 0 then
    for _, client in ipairs(clients) do
      vim.lsp.stop_client(client.id)
    end
    print("HarperLS stopped")
  else
    vim.lsp.enable({
      "harper_ls",
    })
    vim.cmd("edit") -- reload buffer to attach LSP
    print("HarperLS started")
  end
end

vim.keymap.set('n', '<leader>sc', ToggleHarperLS, { desc = "Toggle HarperLS" })
