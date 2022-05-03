vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

    use 'wbthomason/packer.nvim'
    -- Lualine
    use { 'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function()
        require('lualine').setup()
    end, }
    -- Colortheme
    use { "ellisonleao/gruvbox.nvim" }
    -- LSP
    use 'neovim/nvim-lspconfig' 
    use 'williamboman/nvim-lsp-installer'
    -- Comments
    use 'numToStr/Comment.nvim'
    -- Highlighting
    use 'nvim-treesitter/nvim-treesitter'
    -- Git
    use 'tpope/vim-fugitive'
	use 'tpope/vim-rhubarb' -- Fugitive-companion to interact with github
    -- Tmux integration
    use 'christoomey/vim-tmux-navigator'
    -- Markdown
    use 'preservim/vim-markdown'
    use 'tpope/vim-surround'
    use 'tpope/vim-repeat'
    -- Emmet
    use 'mattn/emmet-vim'
    -- () []
    use 'windwp/nvim-autopairs'
    -- nvim speed up
    use 'lewis6991/impatient.nvim'
    --  use 'iamcco/markdown-preview.nvim'
    -- cmp plugins
    use 'hrsh7th/nvim-cmp' -- The completion plugin
    use 'hrsh7th/cmp-buffer' -- buffer completions
    use 'hrsh7th/cmp-path' -- path completions
    use 'hrsh7th/cmp-cmdline' -- cmdline completions
    use 'saadparwaiz1/cmp_luasnip' -- snippet completions
    use 'hrsh7th/cmp-nvim-lsp'   
	-- indent line
    use 'lukas-reineke/indent-blankline.nvim'
	use 'ap/vim-css-color'


	use 'nvim-lua/completion-nvim'
	use 'nvim-lua/lsp-status.nvim'
	use 'nvim-lua/popup.nvim'
	use 'nvim-lua/plenary.nvim'

	-- use 'ludovicchabant/vim-gutentags' -- Automatic tags management
	-- UI to select things (files, grep results, open buffers...)
	-- use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
	-- use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	-- Add git related info in the signs columns and popups
	use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
	-- use 'nvim-treesitter/nvim-treesitter'
	-- Additional textobjects for treesitter
	use 'nvim-treesitter/nvim-treesitter-textobjects'
	use 'L3MON4D3/LuaSnip' -- Snippets plugin
	use 'idanarye/breeze.vim'
    -- Закрывает автоматом html и xml тэги. Пишешь <h1> и он автоматом закроется </h1>
    use 'alvan/vim-closetag'
	-- Даже если включена русская раскладка vim команды будут работать
    use 'powerman/vim-plugin-ruscmd'
	use	'jose-elias-alvarez/nvim-lsp-ts-utils'
	use 'onsails/lspkind.nvim'
	use 'iamcco/markdown-preview.nvim'

end)


