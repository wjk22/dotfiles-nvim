if has("nvim")
  let g:plug_home = stdpath('data') . '/site/plugged'
endif

call plug#begin()

"Vim Fugitive for GIT actions 
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has("nvim")

"LuaLine for a nice status bar
  Plug 'hoob3rt/lualine.nvim'
:
"DeFX
  Plug 'kristijanhusak/defx-git'
  Plug 'kristijanhusak/defx-icons'
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

"Lsp
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'tami5/lspsaga.nvim'
  Plug 'folke/lsp-colors.nvim'

"This tiny plugin adds vscode-like pictograms to neovim built-in lsp:
  Plug 'onsails/lspkind-nvim'

 " hrsh7th/cmp
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'

"Snippets 
  Plug 'L3MON4D3/LuaSnip'
  Plug 'saadparwaiz1/cmp_luasnip'

  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'

"Snippet Collection
  Plug 'rafamadriz/friendly-snippets'

"Treesitter
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

"Webicons 
  Plug 'kyazdani42/nvim-web-devicons'

"Pupup Api from vim in nvim
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'

"Telescope Fuzzy Finder
  Plug 'nvim-telescope/telescope.nvim'
  
"powerful autopair plugin for Neovim that supports multiple characters
  Plug 'windwp/nvim-autopairs'

"Use treesitter to autoclose and autorename html tag"
  Plug 'windwp/nvim-ts-autotag'

"Enhance Visual block
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}

endif

Plug 'groenewege/vim-less', { 'for': 'less' }

call plug#end()

