" mappings lua file
lua require('mappings')

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.config/nvim/vimrc

lua require('langgroups')
" needs to occur after plugins are loaded
lua require('lspsetup')
lua require('cocsetup')
