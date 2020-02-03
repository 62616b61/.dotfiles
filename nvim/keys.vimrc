let mapleader="\<Space>"

" Sidebar
nnoremap <Tab> :NERDTreeToggle<cr>

" WhichKey helper
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" Shift text left and right
vnoremap > >gv
vnoremap < <gv

" Quick jumping between splits
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" Open new splits easily
map vv <C-W>v
map ss <C-W>s
map Q  <C-W>q

" No more mistakes
:command! WQ wq
:command! Wq wq
:command! Wqa wqa
:command! W w
:command! Q q
