-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\Usuario\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\share\\lua\\5.1\\?.lua;C:\\Users\\Usuario\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\Usuario\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\Usuario\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\Usuario\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["aura.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\aura.nvim",
    url = "https://github.com/JLighter/aura.nvim"
  },
  ["boo-colorscheme-nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\boo-colorscheme-nvim",
    url = "https://github.com/rockerBOO/boo-colorscheme-nvim"
  },
  ["bufdelete.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\bufdelete.nvim",
    url = "https://github.com/famiu/bufdelete.nvim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["candle-grey"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\candle-grey",
    url = "https://github.com/aditya-azad/candle-grey"
  },
  catppuccin = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["colorbuddy.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\colorbuddy.nvim",
    url = "https://github.com/tjdevries/colorbuddy.nvim"
  },
  ["dashboard-nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\dashboard-nvim",
    url = "https://github.com/nvimdev/dashboard-nvim"
  },
  decay = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\decay",
    url = "https://github.com/decaycs/decay.nvim"
  },
  ["deepwhite.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\deepwhite.nvim",
    url = "https://github.com/verf/deepwhite.nvim"
  },
  ["detect-language.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\detect-language.nvim",
    url = "https://github.com/spywhere/detect-language.nvim"
  },
  ["error-lens.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\error-lens.nvim",
    url = "https://github.com/chikko80/error-lens.nvim"
  },
  everforest = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\everforest",
    url = "https://github.com/sainnhe/everforest"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gruvbox-material",
    url = "https://github.com/sainnhe/gruvbox-material"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["kanagawa.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine-lsp-progress"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lualine-lsp-progress",
    url = "https://github.com/arkav/lualine-lsp-progress"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lush.nvim",
    url = "https://github.com/rktjmp/lush.nvim"
  },
  ["mellow.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mellow.nvim",
    url = "https://github.com/mellow-theme/mellow.nvim"
  },
  ["miasma.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\miasma.nvim",
    url = "https://github.com/xero/miasma.nvim"
  },
  ["moonlight.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\moonlight.nvim",
    url = "https://github.com/shaunsingh/moonlight.nvim"
  },
  ["neo-tree.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nightcity.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nightcity.nvim",
    url = "https://github.com/cryptomilk/nightcity.nvim"
  },
  ["nordic.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nordic.nvim",
    url = "https://github.com/alexvzyl/nordic.nvim"
  },
  ["northern.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\northern.nvim",
    url = "https://github.com/fcancelinha/northern.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["nvim-window"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-window",
    url = "https://github.com/yorickpeterse/nvim-window"
  },
  ["oxocarbon.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\oxocarbon.nvim",
    url = "https://github.com/nyoom-engineering/oxocarbon.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["sherbet.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\sherbet.nvim",
    url = "https://github.com/lewpoly/sherbet.nvim"
  },
  ["tailwind-tools.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tailwind-tools.nvim",
    url = "https://github.com/luckasRanarison/tailwind-tools.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyodark.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tokyodark.nvim",
    url = "https://github.com/tiagovla/tokyodark.nvim"
  },
  ["transparent.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\transparent.nvim",
    url = "https://github.com/xiyaowong/transparent.nvim"
  },
  ["vim-jsx-improve"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-jsx-improve",
    url = "https://github.com/neoclide/vim-jsx-improve"
  },
  ["vim-sunbather"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-sunbather",
    url = "https://github.com/nikolvs/vim-sunbather"
  },
  ["vitesse.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vitesse.nvim",
    url = "https://github.com/2nthony/vitesse.nvim"
  },
  ["winshift.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Usuario\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\winshift.nvim",
    url = "https://github.com/sindrets/winshift.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'dashboard-nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
