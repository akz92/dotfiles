filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-rails'

Plugin 'slim-template/vim-slim'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'tpope/vim-endwise'

Plugin 'tpope/vim-fugitive'

Plugin 'bling/vim-airline'

Plugin 'altercation/vim-colors-solarized'

Plugin 'ap/vim-css-color'

Plugin 'gregsexton/MatchTag'

Plugin 'airblade/vim-gitgutter'

Plugin 'tpope/vim-surround'

Plugin 'scrooloose/syntastic'

Plugin 'elzr/vim-json'

Plugin 'tpope/vim-sensible'

Plugin 'hail2u/vim-css3-syntax'

Plugin 'tpope/vim-haml'

Plugin 'Raimondi/delimitMate'

Plugin 'Shougo/neocomplete.vim'

Plugin 'tpope/vim-bundler'

Plugin 'morhetz/gruvbox'

Plugin 'mhinz/vim-startify'

Plugin 'TaskList.vim'

Plugin 'tpope/vim-commentary'

Plugin 'kchmck/vim-coffee-script'

Plugin 'cakebaker/scss-syntax.vim'

Plugin 'ervandew/supertab'

Plugin 'pangloss/vim-javascript'

Plugin 'tpope/vim-abolish.git'

Plugin 'tpope/vim-speeddating'

Plugin 'danro/rename.vim'

Plugin 'tpope/vim-eunuch'

Plugin 'scrooloose/nerdtree'

Plugin 'easymotion/vim-easymotion'

Plugin 'kien/rainbow_parentheses.vim'

Plugin 'chriskempson/vim-tomorrow-theme'

Plugin 'yegappan/grep'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on
