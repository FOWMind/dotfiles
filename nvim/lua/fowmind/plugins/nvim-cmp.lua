local cmp = require('cmp')
local select_opts = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
  window = {
    completion = {
      border = 'rounded',
    },
    documentation = {
      border = 'rounded',
    },
  },
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  sources = {
    -- Autocomplete file paths
    { name = 'path' },
    -- LSP server suggestions
    { name = 'nvim_lsp', keyword_length = 1 },
    -- Current file words
    { name = 'buffer', keyword_length = 1 },
    -- Loaded snippets
    { name = 'luasnip', keyword_length = 1 },
  },
  mapping = {
    ['<C-Space>'] = cmp.mapping.complete(),
    -- Confirm the selected item
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    -- Cancel the autocomplete
    ['<C-e>'] = cmp.mapping.abort(),
    -- If suggestions menu is active, navigate to next item
    -- If there is no menu, just tab
    -- If the cursor is on an item, autocomplete with that item
    ['<Tab>'] = cmp.mapping(function(fallback)
      local col = vim.fn.col('.') - 1

      if cmp.visible() then
        cmp.select_next_item(select_opts)
      elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        fallback()
      else
        cmp.complete()
      end
    end, {'i', 's'}),
    -- If suggestions menu is active, navigate to previous item
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item(select_opts)
      else
        fallback()
      end
    end, {'i', 's'}),
  },
  -- mapping = cmp.mapping.preset.insert({
  --   ['<C-b>'] = cmp.mapping.scroll_docs(-4),
  --   ['<C-f>'] = cmp.mapping.scroll_docs(4),
  --   ['<C-Space>'] = cmp.mapping.complete(),
  --   ['<C-e>'] = cmp.mapping.abort(),
  --   ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  -- }),
  -- Change the appearance of the completion menu
  formatting = {
      format = function(entry, vim_item)
        local KIND_ICONS = {
          Tailwind = '󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞',
          Color = ' ',
          -- Class = 7,
          -- Constant = '󰚞',
          -- Constructor = 4,
          -- Enum = 13,
          -- EnumMember = 20,
          -- Event = 23,
          -- Field = 5,
          -- File = 17,
          -- Folder = 19,
          -- Function = 3,
          -- Interface = 8,
          -- Keyword = 14,
          -- Method = 2,
          -- Module = 9,
          -- Operator = 24,
          -- Property = 10,
          -- Reference = 18,
          Snippet = " ",
          -- Struct = 22,
          -- Text = "",
          -- TypeParameter = 25,
          -- Unit = 11,
          -- Value = 12,
          -- Variable = 6
        }
        if vim_item.kind == 'Color' and entry.completion_item.documentation then
          local _, _, r, g, b =
          ---@diagnostic disable-next-line: param-type-mismatch
              string.find(entry.completion_item.documentation, '^rgb%((%d+), (%d+), (%d+)')

          if r and g and b then
            local color = string.format('%02x', r) .. string.format('%02x', g) .. string.format('%02x', b)
            local group = 'Tw_' .. color

            if vim.api.nvim_call_function('hlID', { group }) < 1 then
              vim.api.nvim_command('highlight' .. ' ' .. group .. ' ' .. 'guifg=#' .. color)
            end

            vim_item.kind = KIND_ICONS.Tailwind
            vim_item.kind_hl_group = group

            return vim_item
          end
        end

        vim_item.kind = KIND_ICONS[vim_item.kind] or vim_item.kind

        return vim_item
      end,
  },
})
