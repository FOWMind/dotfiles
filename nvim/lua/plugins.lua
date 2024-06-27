require('fowmind.plugins')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Icons
  use 'nvim-tree/nvim-web-devicons'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Conquer of Completion
  use {
    'neoclide/coc.nvim',
    branch = 'release'
  }

  -- Explore the files
  use {
  'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    requires = { 
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
      -- '3rd/image.nvim', -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  }

  -- Toggle terminal
  use 'akinsho/toggleterm.nvim'
  
  -- Greeter
  use {
    "startup-nvim/startup.nvim",
    requires = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim"
    },
    config = function()
      require('startup').setup({
        theme = 'dashboard',
      })
    end
  }
  
  -- Colorscheme
  use 'verf/deepwhite.nvim'
  use 'nikolvs/vim-sunbather'
  use 'tiagovla/tokyodark.nvim'
  use 'mellow-theme/mellow.nvim'
  use 'shaunsingh/moonlight.nvim'
  use 'fcancelinha/northern.nvim'
  use 'alexvzyl/nordic.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use 'sainnhe/gruvbox-material'
  use 'sainnhe/everforest'
  use 'rebelot/kanagawa.nvim'
  use 'nyoom-engineering/oxocarbon.nvim'
  use 'xero/miasma.nvim'
  use 'lewpoly/sherbet.nvim'
  use 'aditya-azad/candle-grey'
  use 'rockerBOO/boo-colorscheme-nvim'
  use 'cryptomilk/nightcity.nvim'
  use {
    'JLighter/aura.nvim',
    requires = 'rktjmp/lush.nvim'
  }
  use {
    'decaycs/decay.nvim',
    as = 'decay'
  }
  use {
    '2nthony/vitesse.nvim',
    requires = 'tjdevries/colorbuddy.nvim'
  }
  use {
    'catppuccin/nvim',
    as = 'catppuccin'
  }

  -- Colorizer
  use 'norcalli/nvim-colorizer.lua'

  -- Window "jumper"
  use 'yorickpeterse/nvim-window'
 
  -- Move windows
  use 'sindrets/winshift.nvim'

  -- Transparency
  use 'xiyaowong/transparent.nvim'

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- Buffers
  use {
    'akinsho/bufferline.nvim',
    tag = "*",
    requires = 'nvim-tree/nvim-web-devicons'
  }
  use 'famiu/bufdelete.nvim'

  -- Discord Rich Presence
  -- Currently using CoC Discord RPC:
  -- https://github.com/LeonardSSH/coc-discord-rpc/wiki/install
  -- Alternative:
  -- use 'andweeb/presence.nvim'

  -- JSX highlight
  use 'neoclide/vim-jsx-improve'

  -- Better language detection
  use 'spywhere/detect-language.nvim'

  -- Comment utility
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  -- Autopair
  use 'windwp/nvim-autopairs'

  -- Autocomplete
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'luckasRanarison/tailwind-tools.nvim',
      'onsails/lspkind-nvim',
    }
  }
  
  -- Tailwind tools
  use {
    'luckasRanarison/tailwind-tools.nvim',
    requires = 'nvim-treesitter/nvim-treesitter'
  }

  -- Error lens
  use {
    'chikko80/error-lens.nvim',
    requires = 'nvim-telescope/telescope.nvim'
  }

  -- LSP progress
  use 'arkav/lualine-lsp-progress'

  -- Formatter
  -- use 'stevearc/conform.nvim'
end)
