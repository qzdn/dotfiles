syntax on
set number
set relativenumber

set noexpandtab
set shiftwidth=4
set tabstop=4
set autoindent
set cindent
set wrap
set smarttab

set showmatch
set hlsearch
set incsearch
set ignorecase

set list
set listchars=tab:··
"set listchars=eol:¬
"set listchars=space:␣

set ffs=unix,dos,mac
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866

" move lines up and down w/ Ctrl+Alt
nnoremap <silent> <C-M-Up> :m .-2<CR>
nnoremap <silent> <C-M-Down> :m .+1<CR>
