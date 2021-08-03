if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-commentary'
" Plug 'NLKNguyen/papercolor-theme'
Plug 'cohama/lexima.vim'

if has("nvim")
  Plug 'bluz71/vim-nightfly-guicolors'
  Plug 'projekt0n/github-nvim-theme'
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-lua/completion-nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'hoob3rt/lualine.nvim'
  Plug 'windwp/nvim-ts-autotag'
endif
call plug#end()
