call plug#begin('~/.local/share/nvim/plugged')

Plug 'mhinz/vim-startify'
"Plug 'simeji/winresizer'
Plug 'nerdypepper/agila.vim'
Plug 'ryanoasis/vim-devicons'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'yuki-ycino/fzf-preview.vim'

" Git
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'kdheepak/lazygit.vim', { 'branch': 'nvim-v0.4.3' }

"Plug 'wellle/context.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'yuttie/comfortable-motion.vim'
Plug 'Yggdroot/indentLine'
Plug 'liuchengxu/vista.vim'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

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
