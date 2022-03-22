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

