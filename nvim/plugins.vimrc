call plug#begin('~/.local/share/nvim/plugged')

Plug 'mhinz/vim-startify'
Plug 'simeji/winresizer'

" Themes
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep'  }


Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
"Plug 'nerdypepper/vim-colors-plain'
"Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'elzr/vim-json'
Plug 'yuttie/comfortable-motion.vim'
Plug 'Yggdroot/indentLine'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

Plug 'ervandew/supertab'


" Syntax
Plug 'jparise/vim-graphql'
"Plug 'uarun/vim-protobuf'
"Plug 'posva/vim-vue'
"Plug 'hashivim/vim-terraform'

" JS & TS
Plug 'peitalin/vim-jsx-typescript'
Plug 'HerringtonDarkholme/yats.vim'
"Plug 'flowtype/vim-flow'
Plug 'pangloss/vim-javascript'

call plug#end()
