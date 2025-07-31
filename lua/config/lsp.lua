vim.lsp.enable({
    "lua_ls",
    "bashls",
    "clangd",
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
