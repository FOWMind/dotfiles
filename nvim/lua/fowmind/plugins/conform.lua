require('conform').setup({
  formatters_by_ft = {
    lua = { 'stylua' },
    -- Conform will run multiple formatters sequentially
    python = { 'isort', 'black' },
    -- Use a sub-list to run only the first available formatter
    -- javascript = { { 'prettierd', 'prettier' } },
  },
  format_on_save = function(bufnr)
    -- Doesn't work if format on save is disabled
    if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
      return
    end

    return {
      -- These options will be passed to conform.format()
      timeout_ms = 1000,
      lsp_fallback = true,
    }
  end,
})

-- vim.lsp.buf.format({
--     filter = function(client)
--         return client.name ~= "tsserver"
--     end
-- })

-- Format on save
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*',
  callback = function(args)
    require('conform').format({ bufnr = args.buf })
    print('Formatted')
  end,
})

-- Create commands to enable and disable format on save
vim.api.nvim_create_user_command("FormatDisable", function(args)
  if args.bang then
    -- FormatDisable! will disable formatting just for this buffer
    vim.b.disable_autoformat = true
  else
    vim.g.disable_autoformat = true
  end
  print('Format on save disabled')
end, {
  desc = 'Disable autoformat-on-save',
  bang = true,
})

vim.api.nvim_create_user_command("FormatEnable", function()
  vim.b.disable_autoformat = false
  vim.g.disable_autoformat = false
  print('Format on save enabled')
end, {
  desc = 'Re-enable autoformat-on-save',
})
