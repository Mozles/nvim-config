if vim.tbl_islist == nil then
    vim.tbl_islist = vim.islist
end
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'nvim-mini/mini.nvim'
  use 'tpope/vim-fugitive'
  use { 'tpope/vim-vividchalk', as='vividchalk'}
  use { 'srcery-colors/srcery-vim', as="srcery"}
  use { 'miikanissi/modus-themes.nvim'}
  use {'fneu/breezy', as='srcery',
    config = function()

    end
  }
  use {'bluz71/vim-moonfly-colors', as="moonfly"}
  use {'rose-pine/neovim', as='rose-pine'}
  use { 'nvim-treesitter/nvim-treesitter',
  	run = ':TSUpdate'
  }
  use { 'nvim-telescope/telescope.nvim', 
	  requires = { 'nvim-lua/plenary.nvim' }
  }
  use {
      'saghen/blink.cmp',
      requires = {'saghen/blink.lib', 'rafamadriz/friendly-snippets'},
      build = function()
          require('blink.cmp').build()
      end
  }
  use {
      "DamianVCechov/hexview.nvim",
      config = function()
          require("hexview").setup()
      end
  }
end)
