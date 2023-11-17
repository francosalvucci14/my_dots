return require('packer').startup(function(use)
  -- Configurations will go here soon
 use 'wbthomason/packer.nvim'
 use 'williamboman/mason.nvim'   
 use 'williamboman/mason-lspconfig.nvim'
 use 'neovim/nvim-lspconfig' 
 -- Hrsh7th Code Completion Suite
    use 'hrsh7th/nvim-cmp' 
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'                             
    use 'hrsh7th/cmp-path'                              
    use 'hrsh7th/cmp-buffer'                            
    use 'hrsh7th/vim-vsnip'
    -- File explorer tree
 use {
  'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    -- Dracula theme for styling
 -- use 'Mofiqul/dracula.nvim'
 use { "catppuccin/nvim", as = "catppuccin" }
 }
-- use {
-- 	'folke/trouble.nvim',
--   requires = {
--     'nvim-tree/nvim-web-devicons', -- optional, for file icons
--   },
	
-- }
use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
 use 'folke/which-key.nvim'
-- use 'folke/tokyonight.nvim'
 -- Treesitter
 use {
  -- recommended packer way of installing it is to run this function, copied from documentation
         'nvim-treesitter/nvim-treesitter',
      run = function()
              local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
              ts_update()
         end,

 }
 -- Lualine information / Status bar
 use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
 }
 -- Telescope used to fuzzy search files
 use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { 
      'nvim-lua/plenary.nvim',
      {
         'nvim-telescope/telescope-fzf-native.nvim',
         -- NOTE: If you are having trouble with this installation,
         --       refer to the README for telescope-fzf-native for more instructions.
         build = 'make',
         cond = function()
           return vim.fn.executable 'make' == 1
         end,
       },
    }
 }
 -- Number line
use  "sitiom/nvim-numbertoggle" 
use {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
      theme = 'hyper',
    config = {
      week_header = {
       enable = true,
      },
      shortcut = {
        --{ desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
        {
          icon = ' ',
          icon_hl = '@variable',
          desc = 'Files',
          group = 'Label',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
	   -- icon = ''	
           desc = ' Apps',
           group = 'Label',
           action = 'Telescope diagnostics',
           key = 'a',
        },
        -- {
        --   desc = ' dotfiles',
        --   group = 'Number',
        --   action = 'Telescope dotfiles',
        --   key = 'd',
        -- },
      },
    },
  }
  end,
  requires = {'nvim-tree/nvim-web-devicons'}
}
end)