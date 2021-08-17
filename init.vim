" initial plugin system
call plug#begin('~/.nvim/plugged')
	Plug 'preservim/nerdtree' " file explorer
	Plug 'tpope/vim-commentary' 
	Plug 'lervag/vimtex'
	Plug 'junegunn/vim-easy-align'
	Plug 'itchyny/lightline.vim'
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'

	" code completion
	Plug 'ncm2/ncm2'
    Plug 'roxma/nvim-yarp'

	" Plug 'ncm2/ncm2-bufword'
    Plug 'ncm2/ncm2-path'

	" python
	Plug 'vim-python/python-syntax'

	" julia
	Plug 'JuliaEditorSupport/julia-vim'

	" theme
	" Using Vim-Plug:
	Plug 'jcorbin/darkula'
	Plug 'danilo-augusto/vim-afterglow'
	Plug 'sainnhe/sonokai'
	Plug 'arzg/vim-colors-xcode'
	Plug 'navarasu/onedark.nvim'
	Plug 'sonph/onehalf', { 'rtp': 'vim' }
	Plug 'ayu-theme/ayu-vim'
	Plug 'tomasiser/vim-code-dark'
	Plug 'morhetz/gruvbox'
	Plug 'projekt0n/github-nvim-theme'
call plug#end()

" line numbers in nerdtee
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber

" ncm2
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect


" split navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" layout
set relativenumber
set number
set ts=4 sw=4
set showmatch
set scrolloff=10
set nowrap
set colorcolumn=80
highlight Normal ctermbg=none
highlight NonText ctermbg=none


" remap esc
imap jk  <Esc>

" nerdtree
nmap fe :NERDTreeToggle<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"" editor
set cursorline
set termguicolors

colorscheme sonokai


let g:python_highlight_all = 1
