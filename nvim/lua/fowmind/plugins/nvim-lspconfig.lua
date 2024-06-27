local lspconfig = require('lspconfig')
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.pyright.setup { capabilities = lsp_capabilities }
lspconfig.tsserver.setup { capabilities = lsp_capabilities }
lspconfig.html.setup { capabilities = lsp_capabilities }
lspconfig.jsonls.setup { capabilities = lsp_capabilities }
lspconfig.tailwindcss.setup {}

-- Global mappings.
vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function()
    local bufmap = function(mode, lhs, rhs)
      local opts = { buffer = true }
      vim.keymap.set(mode, lhs, rhs, opts)
    end
    -- Go to definition
    bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
    -- Go to declaration
    bufmap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
    -- Show implementation
    bufmap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')
    -- Go to type definition
    bufmap('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
    -- List references
    bufmap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
  end
})
