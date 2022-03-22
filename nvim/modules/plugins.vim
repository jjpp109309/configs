" plug
call plug#begin('~/.nvim/plugged')
	" telescope
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'nvim-telescope/telescope-fzf-native.nvim'
	Plug 'BurntSushi/ripgrep'
	
	" Intellisense 
	Plug 'neovim/nvim-lspconfig'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'hrsh7th/nvim-cmp'
	
	" treesitter
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'nvim-treesitter/playground'
	Plug 'romgrk/nvim-treesitter-context'
	
	" functionality
	Plug 'preservim/nerdcommenter'
	
	" python
	Plug 'vim-python/python-syntax'
	
	" layout
	Plug 'itchyny/lightline.vim'
	Plug 'lukas-reineke/indent-blankline.nvim'
	
	" git
	Plug 'sindrets/diffview.nvim'
	Plug 'lewis6991/gitsigns.nvim'
	
	" colorscheme
	Plug 'ayu-theme/ayu-vim'
	Plug 'sonph/onehalf', {'rtp': 'vim/'}
	Plug 'morhetz/gruvbox'
	Plug 'navarasu/onedark.nvim'
	Plug 'embark-theme/vim', { 'as': 'embark' }
	Plug 'sainnhe/sonokai'
	Plug 'bluz71/vim-nightfly-guicolors'
	Plug 'doums/darcula'
	Plug 'arzg/vim-colors-xcode'
	Plug 'ayu-theme/ayu-vim'
	Plug 'projekt0n/github-nvim-theme'
	Plug 'tanvirtin/monokai.nvim'
	Plug 'jjpp109309/vscode.nvim'
	Plug 'sainnhe/gruvbox-material'
	Plug 'dracula/vim'

	Plug 'akinsho/bufferline.nvim'
call plug#end()


