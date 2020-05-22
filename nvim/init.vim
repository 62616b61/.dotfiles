mapclear
let &t_ZM = "\e[3m"

" Key mappings
source $HOME/.dotfiles/nvim/keys.vimrc

" Install plugins
source $HOME/.dotfiles/nvim/plugins/plugins.vim

" Language Server Protocol configs
source $HOME/.dotfiles/nvim/lsp.vimrc

" General VIM configs
source $HOME/.dotfiles/nvim/general.vimrc

" Highlight the current line
" Only highlights the active window, and only when vim is in focus
"set cursorline
augroup highlight_follows_focus
    autocmd!
    autocmd WinEnter * set cursorline
    autocmd WinLeave * set nocursorline
augroup END
augroup highlight_follows_vim
    autocmd!
    autocmd FocusGained * set cursorline
    autocmd FocusLost * set nocursorline
augroup END

"augroup restorecursor
  "autocmd BufReadPost *
    "\ if line("'\"") > 1 && line("'\"") <= line("$") |
    "\   execute "normal! g`\"" |
    "\ endif
"augroup END

"augroup nerdtree
  "autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"augroup END


" general settings
set nobackup
set nowritebackup
set noswapfile " get rid of swapfiles everywhere
set dir=/tmp

syntax on

set relativenumber
set norelativenumber  " turn relative line numbers off
set relativenumber!   " toggle relative line numbers

set omnifunc=syntaxcomplete#Complete
set completefunc=LanguageClient#complete
set list
filetype indent on
set laststatus=2
set nowrap
set noshowmode
set listchars=tab:│\ ,nbsp:␣,trail:·,extends:>,precedes:<
set fillchars=vert:\│
set ignorecase
set smartcase
set sidescroll=40
set incsearch
set hlsearch
set undofile
set undodir=~/tmp
set path+=**
set inccommand=split
set backspace=indent,eol,start
set hidden
set wildmenu
set foldmethod=manual
set complete=.,w,b,i,u,t,
"set termguicolors
set background=dark

" always show signcolumns
set signcolumn=yes

set updatetime=100
set clipboard=unnamedplus


set wildignore+=.git,.hg,.svn
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
set wildignore+=*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
set wildignore+=*.mp3,*.oga,*.ogg,*.wav,*.flac
set wildignore+=*.eot,*.otf,*.ttf,*.woff
set wildignore+=*.doc,*.pdf,*.cbr,*.cbz
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
set wildignore+=*.swp,.lock,.DS_Store,._*

colorscheme agila

set shiftwidth=2     " indent = 2 spaces
set expandtab
set tabstop=2        " tab = 2 spaces
set softtabstop=2    " backspace through spaces

" statusline
let g:currentmode={
    \ 'n'  : 'NORMAL ',
    \ 'no' : 'N·OPERATOR PENDING ',
    \ 'v'  : 'VISUAL ',
    \ 'V'  : 'V·LINE ',
    \ '' : 'V·BLOCK ',
    \ 's'  : 'SELECT ',
    \ 'S'  : 'S·LINE ',
    \ '' : 'S·BLOCK ',
    \ 'i'  : 'INSERT ',
    \ 'R'  : 'REPLACE ',
    \ 'Rv' : 'V·REPLACE ',
    \ 'c'  : 'COMMAND ',
    \ 'cv' : 'VIM EX ',
    \ 'ce' : 'EX ',
    \ 'r'  : 'PROMPT ',
    \ 'rm' : 'MORE ',
    \ 'r?' : 'CONFIRM ',
    \ '!'  : 'SHELL ',
    \ 't'  : 'TERMINAL '}
 hi PrimaryBlock ctermfg=00 ctermbg=02 cterm=bold
 hi SecondaryBlock ctermfg=07 ctermbg=11
 hi Blanks ctermfg=8 ctermbg=00

highlight EndOfBuffer ctermfg=black ctermbg=black

set statusline=
set statusline+=%#PrimaryBlock#
set statusline+=\ %{g:currentmode[mode()]}
set statusline+=%#SecondaryBlock#
set statusline+=%{StatuslineGit()}
set statusline+=%#Blanks#
set statusline+=\ %t\ 
set statusline+=%(%m%)
set statusline+=%=
set statusline+=%#SecondaryBlock#
set statusline+=\ Ln
set statusline+=\ %l
set statusline+=,Col
set statusline+=\ %c\ 
set statusline+=%#PrimaryBlock#
set statusline+=\ %Y\ 

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

" Open splits on the right and below
set splitbelow
set splitright

" plugin settings
let g:gitgutter_enabled = 1

" comfortable motion
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"

" indentLine
let g:indentLine_setColors = 0
let g:indentLine_char      = '┊'

" vim-json
let g:vim_json_syntax_conceal = 0
