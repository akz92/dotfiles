call plug#begin('~/.vim/bundle')

" Manipulate files
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle'   }
Plug 'tpope/vim-surround'
Plug 'francoiscabrol/ranger.vim', { 'on': 'Ranger' }

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
Plug 'janko-m/vim-test', { 'on': ['TestNearest', 'TestFile', 'TestLast'] }

" Misc
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-easy-align'
Plug 'brooth/far.vim', { 'on': 'Farp' }
Plug 'wellle/targets.vim'
Plug 'akz92/vim-angular2', { 'on': ['Angular2Controller', 'Angular2Html', 'Angular2Layout'] }

call plug#end()
