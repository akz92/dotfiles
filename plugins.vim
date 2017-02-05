call plug#begin('~/.vim/bundle')

" Manipulate files
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle'   }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'

" Search files
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Productivity
Plug 'wakatime/vim-wakatime'

" Buffer and window manipulations
Plug 'schickling/vim-bufonly'
Plug 'jeetsukumaran/vim-buffergator'

" Motion
Plug 'easymotion/vim-easymotion', { 'on': '<plug>(easymotion-s2)' }

" Completion
Plug 'Valloric/YouCompleteMe'
Plug 'Valloric/MatchTagAlways'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-speeddating'

" Tree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Layout
Plug 'junegunn/vim-easy-align', { 'on': ['<Plug>(EasyAlign)', 'EasyAlign'] }

" Status
Plug 'vim-airline/vim-airline'

" Syntax
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-commentary'

" Syntax color
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'slim-template/vim-slim'
Plug 'ap/vim-css-color'
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'leafgarland/typescript-vim'

" Color themes
Plug 'joshdick/onedark.vim'

" Rails section
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rails'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" To avaliate
" Plug 'majutsushi/tagbar'
" Plug 'xolox/vim-easytags'
" Plug 'tpope/vim-sensible'
" Plug 'wincent/command-t'
" Plug 'elzr/vim-json'
" Plug 'gregsexton/MatchTag'
Plug 'janko-m/vim-test'
" Plug 'ervandew/supertab'
" Plug 'tpope/vim-abolish'

Plug 'tpope/vim-dispatch'
Plug 'wellle/targets.vim'

Plug 'akz92/vim-ionic2'

call plug#end()
