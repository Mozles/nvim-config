if vim.tbl_islist == nil then
    vim.tbl_islist = vim.islist
end

local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not (vim.uv or vim.loop).fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()
local cmd = require('pckr.loader.cmd')
local keys = require('pckr.loader.keys')


return require('pckr').add{
  'nvim-mini/mini.nvim';
  'tpope/vim-fugitive';


  { 'nvim-treesitter/nvim-treesitter',
  	run = ':TSUpdate'
  };
  { 'nvim-telescope/telescope.nvim',
	  requires = { 'nvim-lua/plenary.nvim' }
  };
  {
      'saghen/blink.cmp',
      requires = {'saghen/blink.lib', 'rafamadriz/friendly-snippets'},
      build = function()
          require('blink.cmp').build()
      end
  };
  {
      "DamianVCechov/hexview.nvim",
      config = function()
          require("hexview").setup()
      end
  };
  "cohama/lexima.vim";
  {"simonwinther/cppman.nvim",
    cmd = "cppman",
    opts = {
        pricker = {
            provider = "telescope"
        },
    },
  };

  --# color themes
  { 'tpope/vim-vividchalk', as='vividchalk'};
  { 'srcery-colors/srcery-vim', as="srcery"};
  { 'miikanissi/modus-themes.nvim'};
  {'fneu/breezy', as='breezy'};
  {'bluz71/vim-moonfly-colors', as="moonfly"};
  {'rose-pine/neovim', as='rose-pine'};
  {'iagorrr/noctishc.nvim'};
}
