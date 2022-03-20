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
	Plug 'hkupty/iron.nvim'

	" layout
	Plug 'itchyny/lightline.vim'

	" git
	Plug 'sindrets/diffview.nvim'

	" colorscheme
	Plug 'ayu-theme/ayu-vim'
	Plug 'sonph/onehalf', {'rtp': 'vim/'}
	Plug 'morhetz/gruvbox'
	Plug 'navarasu/onedark.nvim'
	Plug 'Mofiqul/vscode.nvim'
	Plug 'embark-theme/vim', { 'as': 'embark' }
	Plug 'sainnhe/sonokai'
	Plug 'bluz71/vim-nightfly-guicolors'
	Plug 'doums/darcula'
	Plug 'arzg/vim-colors-xcode'
	Plug 'ayu-theme/ayu-vim'
	Plug 'projekt0n/github-nvim-theme'
	Plug 'tanvirtin/monokai.nvim'
	Plug 'Mofiqul/vscode.nvim'
	Plug 'sainnhe/gruvbox-material'
	Plug 'dracula/vim'
call plug#end()

language en_US

" lsp
lua << EOF
require'lspconfig'.jedi_language_server.setup{}
EOF


" autocompletion
set completeopt=menu,menuone,noselect
lua <<EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
	mapping = {
      ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Secify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['jedi_language_server'].setup {
    capabilities = capabilities
  }
EOF

" tree-sitter highlighting
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ["foo.bar"] = "Identifier",
    },
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = true,
  },
}
EOF


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

"" editor
set cursorline

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>gf <cmd>Telescope git_files<cr>
nnoremap <leader>fs <cmd>Telescope grep_string<cr>

" colorscheme
"set termguicolors
set background=dark


lua <<EOF


	local monokai = require('monokai')
	local palette = monokai.classic
	monokai.setup {
		custom_hlgroups = {
			TSKeywordFunction = {
				fg = palette.aqua
			},
			TSParameter = {
				fg = palette.orange
			},
			TSMethod = {
				fg = palette.aqua
			},
			TSConstant = {
				fg = palette.white
			},
			TSType = {
				fg = palette.white
			},
			TSNone = {
				fg = palette.purple
			}
		}
	}
EOF

hi Normal guibg=#282922 ctermbg=NONE
hi CursorLine guibg=#333333 ctermbg=NONE
hi ColorColumn guibg=#333333 ctermbg=NONE
hi LineNr guibg=#282922 ctermbg=NONE
" python 
let g:python_highlight_all = 1
