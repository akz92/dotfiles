call plug#begin('~/.vim/bundle')

" Manipulate files
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle'   }
Plug 'tpope/vim-surround'
Plug 'francoiscabrol/ranger.vim'

" Search files
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Completion
Plug 'Shougo/neocomplete.vim'
Plug 'Valloric/MatchTagAlways'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-endwise'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Status
Plug 'itchyny/lightline.vim'

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
Plug 'wellle/targets.vim'
Plug 'akz92/vim-angular2'

call plug#end()
