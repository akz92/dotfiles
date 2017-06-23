call plug#begin('~/.vim/bundle')

" Manipulate files
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle'   }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'

" Search files
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Completion
Plug 'Shougo/neocomplete.vim'
Plug 'Valloric/MatchTagAlways'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-endwise'

Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Tree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeFind' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Status
Plug 'vim-airline/vim-airline'

" Lint
Plug 'w0rp/ale'


" Syntax color
Plug 'sheerun/vim-polyglot'
Plug 'akz92/vim-ionic2'
" Plug '~/dev/ionic2-syntax.vim'

" Color themes
Plug 'joshdick/onedark.vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Test
Plug 'janko-m/vim-test'

" Misc
Plug 'tpope/vim-commentary'
Plug 'tommcdo/vim-lion'
Plug 'brooth/far.vim'
Plug 'tpope/vim-dispatch'
Plug 'wellle/targets.vim'

call plug#end()
