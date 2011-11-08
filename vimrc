syntax on
color jellybeans
set number
set guioptions-=T

"indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set nowrap
set textwidth=79

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"searching
set hlsearch
nmap n nzz
nmap N Nzz

"plugins
:filetype plugin on
:helptags ~/.vim/doc
