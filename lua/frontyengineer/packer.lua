-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'bluz71/vim-nightfly-colors'


  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use 'tpope/vim-surround'
  use 'vim-scripts/ReplaceWithRegister'

  use('itchyny/lightline.vim')

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use ('frazrepo/vim-rainbow')
  use ('lukas-reineke/indent-blankline.nvim')
  use ('preservim/nerdcommenter')
  use ('lewis6991/gitsigns.nvim')
  use {'neoclide/coc.nvim', branch = 'release'}

  use  {'norcalli/nvim-colorizer.lua'}

  use({
      "roobert/tailwindcss-colorizer-cmp.nvim",
      -- optionally, override the default options:
      config = function()
          require("tailwindcss-colorizer-cmp").setup({
              color_square_width = 2,
          })
      end
  })

  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })

  use 'ryanoasis/vim-devicons'

  use 'mfussenegger/nvim-dap'

  use 'theHamsta/nvim-dap-virtual-text';
  end)
