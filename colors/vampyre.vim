" Vampyre - A dark vampire-themed colorscheme for Neovim
" Maintainer: Your Name
" License: MIT

if exists('g:colors_name')
  highlight clear
endif

if exists('syntax_on')
  syntax reset
endif

set background=dark
let g:colors_name = 'vampyre'

lua require('vampyre_theme')
