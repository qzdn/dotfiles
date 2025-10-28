" -- Config --
syntax on                      " Enable syntax highlighting
set number                     " Show line numbers
set relativenumber             " Show relative line numbers
set expandtab                  " Use spaces instead of tabs
set shiftwidth=2               " Auto-indent width
set tabstop=2                  " Tab width
set smartindent                " Enable smart indentation
set cindent                    " Better C/C++ indentation
set smarttab                   " Tab respects shiftwidth
set linebreak                  " Wrap lines at word boundaries
set showmatch                  " Highlight matching brackets
set mouse=a                    " Enable mouse support
set hlsearch                   " Highlight search matches
set incsearch                  " Show incremental search results
set ignorecase                 " Case-insensitive search
set list                       " Show whitespace characters
set listchars=tab:··           " Display tabs as dots
set path+=**                   " Enable recursive file search
set wildmenu                   " Enhanced command-line completion
set wildmode=longest:full,full " Completion mode
set scrolloff=5                " Keep cursor centered with margin
set showmode                   " Show current mode (e.g., INSERT)
set showcmd                    " Display incomplete commands
set confirm                    " Ask for confirmation instead of error
set hidden                     " Allow switching buffers without saving
let g:netrw_liststyle = 3      " Tree-style view

" -- Hotkeys --
let mapleader="\\"
nnoremap <leader>. :Explore<CR>
nnoremap <leader>f :find 

nnoremap <leader>b :BufExplorer<CR>
nnoremap <leader>q :bd<CR>     " Close buffer
nnoremap <leader>n :bnext<CR>
nnoremap <leader>p :bprevious<CR>

