" set leader key
let g:mapleader = "\<Space>"

syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line (edited)
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set signcolumn=yes                      " Always show signcolumns
set sidescroll=20                       " Incremental horizontal scroll to reveal more text as needed
set inccommand=split                    " Shows results while doing search and replace
set backspace=indent,eol,start          " Make backspace work like most other programs
set foldmethod=manual                   " Folds must be defined by entering commands (zf)

set ignorecase                          " Searching is not case sensitive
set smartcase                           " If a pattern contains an uppercase letter, it is case sensitive, otherwise, it is not
set incsearch                           " Show the next match while entering a search
set hlsearch                            " Highlighting search matches

set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set noswapfile                          " Get rid of swapfiles everywhere
set undofile                            " Enable persistent undo file
set dir=/tmp                            " Change swap directory
set undodir=~/.vim/undo                 " Change undo directory

set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
"set autochdir                           " Your working directory will always be the same as your working directory

set shiftwidth=2                        " Change the number of space characters inserted for indentation
set expandtab                           " Converts tabs to spaces
set tabstop=2                           " Insert 2 spaces for a tab
set softtabstop=2                       " Backspace through spaces

set relativenumber
set norelativenumber                    " Turn relative line numbers off
set relativenumber!                     " Toggle relative line numbers

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vim alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %
