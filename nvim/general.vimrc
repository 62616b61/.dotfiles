" by default .ts file are not identified as typescript and .tsx files are not
" identified as typescript react file, so add following
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-json', 
  \ 'coc-highlight', 
  \ ]

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" nerdtree
let g:NERDTreeMinimalUI           = 1
let g:NERDTreeWinPos              = 'left'
let g:NERDTreeWinSize             = 40
let g:NERDTreeStatusline          = "  "
let g:NERDTreeDirArrowExpandable  = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" vista
let g:vista_executive_for = {
  \ 'js': 'vim_lsp',
  \ }
let g:vista_ignore_kinds = ['Variable']

" TERMINAL BEHAVIOR {{{
  augroup TerminalBehavior
    autocmd!
    autocmd TermOpen * setlocal listchars= nonumber norelativenumber nowrap winfixwidth laststatus=0 noruler signcolumn=no noshowmode
    autocmd TermOpen * startinsert
    autocmd TermClose * set laststatus=2 showmode ruler
  augroup END
" }}}

" REMOVE EMPTY BUFFERS {{{
  function! RemoveEmptyBuffers()
    let buffers = filter(range(1, bufnr('$')), 'buflisted(v:val) && empty(bufname(v:val)) && bufwinnr(v:val)<0 && !getbufvar(v:val, "&mod")')
    if !empty(buffers)
        silent exe 'bw ' . join(buffers, ' ')
    endif
  endfunction
" }}}

" TERMINAL DRAWER {{{
  " depends on: CLEAN UI and Terminal Behavior
  nnoremap <silent><leader>\           :call ToggleTerminalDrawer()<CR>
  tnoremap <silent><leader>\ <C-\><C-n>:call ToggleTerminalDrawer()<CR>

  let g:terminal_drawer = { 'win_id': v:null, 'buffer_id': v:null }
  function! ToggleTerminalDrawer() abort
    if win_gotoid(g:terminal_drawer.win_id)
      hide
      set laststatus=2 showmode ruler
    else
      botright new
      if !g:terminal_drawer.buffer_id
        call termopen($SHELL, {"detach": 0})
        let g:terminal_drawer.buffer_id = bufnr("")
      else
        exec 'buffer' g:terminal_drawer.buffer_id
        call RemoveEmptyBuffers()
      endif

      exec 'resize' float2nr(&lines * 0.25)
      setlocal laststatus=0 noshowmode noruler
      setlocal nobuflisted
      echo ''
      startinsert!
      let g:terminal_drawer.win_id = win_getid()

      tnoremap <buffer><Esc> <C-\><C-n>
      nnoremap <buffer><silent><Esc> :q<cr>
      nnoremap <buffer><silent> q :q<CR>
    endif
  endfunction
" }}}
