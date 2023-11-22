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
		--  use { "catppuccin/nvim", as = "catppuccin" }
	}

	use {
		'folke/trouble.nvim',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},


	}

	-- for autoformatting
	use "elentok/format-on-save.nvim"
	-- bufferline
	use { 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons' }
	use 'folke/which-key.nvim'
	use 'folke/tokyonight.nvim'
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
	use "sitiom/nvim-numbertoggle"
	use {
		'nvimdev/dashboard-nvim',
		event = 'VimEnter',
		config = function()
			require('dashboard').setup {
				-- config
				theme = 'hyper',
				config = {
					header = { "                                             ",
						"                                             ",
						"                   _______  _______  _______ ",
						"|\\     /||\\     /|(  ____ )(  ____ \\(  ____ )",
						"| )   ( |( \\   / )| (    )|| (    \\/| (    )|",
						"| (___) | \\ (_) / | (____)|| (__    | (____)|",
						"|  ___  |  \\   /  |  _____)|  __)   |     __)",
						"| (   ) |   ) (   | (      | (      | (\\ (   ",
						"| )   ( |   | |   | )      | (____/\\| ) \\ \\__",
						"|/     \\|   \\_/   |/       (_______/|/   \\__/",
						"                                             ",
						"                                             " },
					week_header = {
						enable = false,
					},
					mru = { limit = 10, icon = '  ', label = 'Most Recent Files', cwd_only = false },
					shortcut = {
						{ desc = '󰊳 Update', group = '@property', action = 'PackerSync', key = 'u' },
						{
							icon = ' ',
							icon_hl = '@variable',
							desc = 'Files',
							group = 'Label',
							action = 'Telescope find_files hidden=true',
							key = 'f',
						},
						--{
						-- icon = ''	
						--   desc = ' Apps',
						--   group = 'Label',
						--   action = 'Telescope diagnostics',
						--   key = 'a',
						--},
						-- {
						--   desc = ' dotfiles',
						--   group = 'Number',
						--   action = 'Telescope dotfiles',
						--   key = 'd',
						-- },
					},
					-- footer = {
					-- 	"         _________          _______    _        _______    _______  _______  _______  _______  _        _______ ",
					-- 	"|\\     /|\\__   __/|\\     /|(  ___  )  ( \\      (  ___  )  (  ____ \\(  ____ )(  ____ \\(  ____ \\( (    /|(  ___  )",
					-- 	"| )   ( |   ) (   | )   ( || (   ) |  | (      | (   ) |  | (    \\/| (    )|| (    \\/| (    \\/|  \\  ( || (   ) |",
					-- 	"| |   | |   | |   | |   | || (___) |  | |      | (___) |  | (__    | (____)|| (__    | |      |   \\ | || (___) |",
					-- 	"( (   ) )   | |   ( (   ) )|  ___  |  | |      |  ___  |  |  __)   |     __)|  __)   | | ____ | (\\ \\) ||  ___  |",
					-- 	" \\ \\_/ /    | |    \\ \\_/ / | (   ) |  | |      | (   ) |  | (      | (\\ (   | (      | | \\_  )| | \\   || (   ) |",
					-- 	"  \\   /  ___) (___  \\   /  | )   ( |  | (____/\\| )   ( |  | )      | ) \\ \\__| (____/\\| (___) || )  \\  || )   ( |",
					-- 	"   \\_/   \\_______/   \\_/   |/     \\|  (_______/|/     \\|  |/       |/   \\__/(_______/(_______)|/    )_)|/     \\|",
					-- 	"                                                                                                                "
					-- }, -- footer
					
				},
			}
		end,
		requires = { 'nvim-tree/nvim-web-devicons' }
	}
end)
