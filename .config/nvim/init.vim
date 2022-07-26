" mappings lua file
lua require('mappings')
lua require('langgroups')

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.config/nvim/vimrc

" needs to occur after plugins are loaded
lua require('lspsetup')
lua require('cocsetup')
