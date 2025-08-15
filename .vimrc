syntax on
set number
set relativenumber 
set expandtab
set shiftwidth=2
set tabstop=2
set smartindent
set cindent
set wrap
set smarttab

set mouse=a
set showmatch
set hlsearch
set incsearch
set ignorecase

set list
set listchars=tab:··

nnoremap <M-Left> :tabprevious<CR>                                                                            
nnoremap <M-Right> :tabnext<CR>
nnoremap <M-h> :tabprevious<CR>                                                                            
nnoremap <M-l> :tabnext<CR>

nnoremap <M-Down> :bNext<CR>                                                                            
nnoremap <M-Up> :bprevious<CR>
nnoremap <M-j> :bNext<CR>                                                                            
nnoremap <M-k> :bprevious<CR>

nnoremap <M-F1> :Texplore<CR>

"set listchars=eol:¬
"set listchars=space:␣
"set ffs=unix,dos,mac
"set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866
