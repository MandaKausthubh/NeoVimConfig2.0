-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { "rose-pine/neovim", as = "rose-pine" }
  use { "rebelot/kanagawa.nvim", as = "kanagawa"}

  use {'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}}
  use {'nvim-treesitter/playground'}

  use {'ThePrimeagen/harpoon'}

  use {'mbbill/undotree'}

  use {
	  "williamboman/mason.nvim",
	  "williamboman/mason-lspconfig.nvim",
	  "neovim/nvim-lspconfig"
  }
  use {
	  'hrsh7th/nvim-cmp',
	  'hrsh7th/cmp-nvim-lsp',
	  'L3MON4D3/LuaSnip',
	  'hrsh7th/cmp-cmdline',
	  'hrsh7th/cmp-buffer',
	  'hrsh7th/cmp-path',
  }

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {'airblade/vim-gitgutter'}

  -- A few Basic Plugins:
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'

  use {'mg979/vim-visual-multi'}

  use 'tpope/vim-fugitive'
  use { "catppuccin/nvim", as = "catppuccin" }

  -- use 'goerz/jupytext.vim'
  use 'ThePrimeagen/vim-be-good'

  use "sindrets/diffview.nvim"

end)
