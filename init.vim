" plug
call plug#begin('~/.nvim/plugged')
	" telescope
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'

	" python
	Plug 'vim-python/python-syntax'


	" layout
	Plug 'itchyny/lightline.vim'

	" colorscheme
	Plug 'morhetz/gruvbox'
	Plug 'navarasu/onedark.nvim'
call plug#end()

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


" insert mode remaps 
imap jk  <Esc>
imap ( ()<Left>
imap [ []<Left>
imap { {}<Left>
inoremap ' ''<Left>
inoremap " ""<Left>

"" editor
set cursorline

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" colorscheme
""let g:onedark_style = 'default'
colorscheme onedark

let g:python_highlight_all = 1
