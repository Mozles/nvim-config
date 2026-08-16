require('nvim-treesitter').setup {
  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
  install_dir = vim.fn.stdpath('data') .. '/site',
  highlight = {
	  enable = true,
  },
}

require('nvim-treesitter').install { 'c', 'lua', 'bash', 'odin', 'make' }
