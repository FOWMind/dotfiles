require('bufferline').setup {
  options = {
    offsets = {
      {
        filetype = "neo-tree",
        text = "File Explorer",
        highlight = "Directory",
        separator = false -- use a "true" to enable the default, or set your own character
      }
    },
    diagnostics_indicator = function(count, level)
        local icon = level:match("error") and " " or ""
        return " " .. icon .. count
    end,
    separator_style = 'thick' -- slant, padded_slant, slope, padded_slope, thick, thin
  }
}
