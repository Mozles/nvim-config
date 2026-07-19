vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', version = '*',
	  requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {
	  'rose-pine/neovim', as='rose-pine',
	  config = function() 
		  vim.cmd("colorscheme rose-pine")
	  end
  }
  use 'nvim-mini/mini.nvim'
  use 'tpope/vim-fugitive'
  use { 'nvim-treesitter/nvim-treesitter',
  { run = 'TSUpdate'}
  }
  
  use {
      'saghen/blink.cmp',
      requires = {{'saghen/blink.lib', 'rafamadriz/friendly-snippets'}},
      build = function()
          require('blink.cmp').build()
      end,
  }

end)
