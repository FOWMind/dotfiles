require('telescope').setup({
  pickers = {
    colorscheme = {
      enable_preview = true
    }
  }
})

-- Save selected colorscheme
local action_state = require('telescope.actions.state')
local actions = {}
actions.save_colorscheme = function(prompt_bufnr)
  local entry = action_state.get_selected_entry(prompt_bufnr)

  vim.loop.fs_open('init.vim', "w", 432, function(err, fd) 
    vim.loop.fs_write(fd, "colorscheme " .. entry.value, nil, function()
      vim.loop.fs_close(fd)
    end)
  end)
end

return actions
