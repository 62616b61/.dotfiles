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

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" No more mistakes
:command! WQ wq
:command! Wq wq
:command! Wqa wqa
:command! W w
:command! Q q
