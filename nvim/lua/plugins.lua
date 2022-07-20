vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	-- CSS colors
	use 'norcalli/nvim-colorizer.lua'
	-- Colortheme
	use { "ellisonleao/gruvbox.nvim" }
	-- LSP
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'
	-- Comments
	use 'numToStr/Comment.nvim'
	-- Highlighting
	use 'nvim-treesitter/nvim-treesitter'
	-- Tmux integration
	use 'christoomey/vim-tmux-navigator'
	-- Brackets
	use 'windwp/nvim-autopairs'
	use 'kylechui/nvim-surround'
	-- Telescope
	use 'nvim-lua/popup.nvim'
	use {
		'nvim-telescope/telescope.nvim', branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	use 'noib3/nvim-cokeline'

	-- Bufferline
	-- use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }

	-- Lualine
	--     use  'nvim-lualine/lualine.nvim'

	-- 	-- use 'glepnir/lspsaga.nvim'
	-- 	use {
	-- 	  "folke/trouble.nvim",
	-- 	  requires = "kyazdani42/nvim-web-devicons",
	-- 	}
	--     -- Git
	--     use 'tpope/vim-fugitive'
	-- 	-- Fugitive-companion to interact with github
	-- 	use 'tpope/vim-rhubarb'
	-- 	use 'ggandor/lightspeed.nvim'
	--     -- Markdown
	--     use 'preservim/vim-markdown'
	-- 	use 'ferrine/md-img-paste.vim'
	--     use 'tpope/vim-surround'
	--     use 'tpope/vim-repeat'
	-- 	use 'dhruvasagar/vim-table-mode'
	--     -- Emmet
	--     use 'mattn/emmet-vim'
	-- () []
	--     -- nvim speed up
	--     use 'lewis6991/impatient.nvim'
	--     --  use 'iamcco/markdown-preview.nvim'
	--     -- cmp plugins
	--     use 'hrsh7th/nvim-cmp' -- The completion plugin
	--     use 'hrsh7th/cmp-buffer' -- buffer completions
	--     use 'hrsh7th/cmp-path' -- path completions
	--     use 'hrsh7th/cmp-cmdline' -- cmdline completions
	--     use 'saadparwaiz1/cmp_luasnip' -- snippet completions
	-- 	use "rafamadriz/friendly-snippets"
	--     use 'hrsh7th/cmp-nvim-lsp'
	-- 	use 'nvim-lua/completion-nvim'
	-- 	-- indent line
	--     use 'lukas-reineke/indent-blankline.nvim'
	-- 	use 'ap/vim-css-color'
	--
	-- 	use 'nvim-lua/lsp-status.nvim'
	-- 	-- use 'ludovicchabant/vim-gutentags' -- Automatic tags management
	-- 	-- UI to select things (files, grep results, open buffers...)
	-- 	use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
	-- 	-- use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	-- 	-- Add git related info in the signs columns and popups
	-- 	use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
	-- 	-- use 'nvim-treesitter/nvim-treesitter'
	-- 	-- Additional textobjects for treesitter
	-- 	use 'nvim-treesitter/nvim-treesitter-textobjects'
	-- 	use 'L3MON4D3/LuaSnip' -- Snippets plugin
	-- 	use 'idanarye/breeze.vim'
	--     -- Закрывает автоматом html и xml тэги. Пишешь <h1> и он автоматом закроется </h1>
	--     use 'alvan/vim-closetag'
	-- 	-- Даже если включена русская раскладка vim команды будут работать
	--     use 'powerman/vim-plugin-ruscmd'
	-- 	use	'jose-elias-alvarez/nvim-lsp-ts-utils'
	-- 	use 'onsails/lspkind.nvim'
	-- 	use 'iamcco/markdown-preview.nvim'
	-- 	use {
	-- 		'kyazdani42/nvim-tree.lua',
	-- 		requires = {
	-- 		  'kyazdani42/nvim-web-devicons', -- optional, for file icon
	-- 		}
	-- 	}
	-- 	-- dap
	-- 	use 'mfussenegger/nvim-dap'
	-- 	use 'theHamsta/nvim-dap-virtual-text'
end)
