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

"ctags
map <silent><C-Right> <C-]>
map <silent><C-Left> <C-T>
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

"plugins
:filetype plugin on
:helptags ~/.vim/doc
let g:NERDTreeChDirMode=2
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
nmap <F8> :TagbarToggle<CR>

noremap <F3> :call Svndiff("prev")<CR> 
noremap <F4> :call Svndiff("next")<CR> 
noremap <F5> :call Svndiff("clear")<CR> 

hi DiffAdd      ctermfg=16 ctermbg=252 gui=bold guifg=#000000 guibg=#65C254
hi DiffDelete   ctermfg=16 ctermbg=88 gui=bold guifg=#000000 guibg=#902020
hi DiffChange   ctermfg=16 ctermbg=215 gui=bold guifg=#000000 guibg=#ffb964

"xml-plugin
let xml_use_html = 1
let xml_use_xhtml = 1
