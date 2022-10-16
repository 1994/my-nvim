vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	-- You can alias plugin names
	use {'dracula/vim', as = 'dracula'}
	use 'neovim/nvim-lspconfig'
	use 'simrat39/rust-tools.nvim'
	use 'kyazdani42/nvim-web-devicons'
	-- Debugging
	use 'nvim-lua/plenary.nvim'
	use 'mfussenegger/nvim-dap'
	use { 
		"williamboman/mason.nvim"
	}
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icons
		},
	}
	use { 'nvim-treesitter/nvim-treesitter', run = 'TSUpdate' }
	use 'jose-elias-alvarez/null-ls.nvim'
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}
	use 'hrsh7th/nvim-cmp' 
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/vim-vsnip'
	use 'nvim-lua/popup.nvim'
	use 'nvim-telescope/telescope.nvim'
	use 'feline-nvim/feline.nvim'
end)
