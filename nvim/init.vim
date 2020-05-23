mapclear
"let &t_ZM = "\e[3m"

source $HOME/.dotfiles/nvim/plugins/plugins.vim
source $HOME/.dotfiles/nvim/general/settings.vim
source $HOME/.dotfiles/nvim/keys/mappings.vim
source $HOME/.dotfiles/nvim/lsp.vimrc


source $HOME/.dotfiles/nvim/configs/nerdtree.vim
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



set listchars
set listchars=tab:│\ ,nbsp:␣,trail:·,extends:>,precedes:<
set fillchars=vert:\│

set path+=**
"set wildmenu
"set complete=.,w,b,i,u,t,
"set termguicolors

colorscheme agila

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
