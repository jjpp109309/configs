language en_US

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
set scrolloff=2
set nowrap
set colorcolumn=80

" file explorer
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'

" insert mode remaps 
imap jk  <Esc>
imap ( ()<Left>
imap [ []<Left>
imap { {}<Left>
inoremap ' ''<Left>
inoremap " ""<Left>

" editor
set cursorline

"set termguicolors
set background=dark

