call plug#begin('~/.local/share/nvim/plugged')

Plug 'mhinz/vim-startify'
"Plug 'moll/vim-bbye' //research more
"Plug 'simeji/winresizer'
Plug 'nerdypepper/agila.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'yuki-ycino/fzf-preview.vim'

"Plug 'wellle/context.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-obsession'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'yuttie/comfortable-motion.vim'
Plug 'Yggdroot/indentLine'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

"Plug 'ervandew/supertab'

" Syntax
Plug 'elzr/vim-json'
Plug 'jparise/vim-graphql'
Plug 'uarun/vim-protobuf'
Plug 'hashivim/vim-terraform'

" JS & TS
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'peitalin/vim-jsx-typescript'

call plug#end()
