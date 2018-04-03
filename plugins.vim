call plug#begin('~/.vim/bundle')

" Manipulate files
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle'   }
Plug 'tpope/vim-surround'
Plug 'francoiscabrol/ranger.vim'
" Plug 'yuttie/comfortable-motion.vim'

" Search files
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Completion
Plug 'ludovicchabant/vim-gutentags'
" Plug 'Shougo/neocomplete.vim'
Plug 'Valloric/MatchTagAlways'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-endwise'
" Plug 'Shougo/neosnippet'
" Plug 'Shougo/neosnippet-snippets'
Plug 'alvan/vim-closetag'

" Status
Plug 'itchyny/lightline.vim'

" Lint
Plug 'w0rp/ale'

" Syntax color
Plug 'sheerun/vim-polyglot'
Plug 'akz92/vim-ionic2'
Plug 'posva/vim-vue'
" Plug '~/dev/ionic2-syntax.vim'

" Color themes
Plug 'joshdick/onedark.vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-rhubarb'

" Test
Plug 'benmills/vimux'
Plug 'janko-m/vim-test', { 'on': ['TestNearest', 'TestFile', 'TestLast'] }

" " Misc
Plug 'tomtom/tcomment_vim'
Plug 'junegunn/vim-easy-align'
Plug 'brooth/far.vim', { 'on': 'Farp' }
Plug 'wellle/targets.vim'
Plug 'akz92/vim-angular2', { 'on': ['Angular2Controller', 'Angular2Html', 'Angular2Layout'] }
Plug 'christoomey/vim-tmux-navigator'
Plug 'editorconfig/editorconfig-vim'

call plug#end()
