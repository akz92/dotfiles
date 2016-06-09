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

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'ap/vim-css-color'

Plugin 'gregsexton/MatchTag'

Plugin 'airblade/vim-gitgutter'

Plugin 'tpope/vim-surround'

Plugin 'scrooloose/syntastic'

Plugin 'hail2u/vim-css3-syntax'

Plugin 'Raimondi/delimitMate'

Plugin 'mhinz/vim-startify'

Plugin 'TaskList.vim'

Plugin 'tpope/vim-commentary'

Plugin 'cakebaker/scss-syntax.vim'

Plugin 'pangloss/vim-javascript'

Plugin 'tpope/vim-abolish.git'

Plugin 'tpope/vim-speeddating'

Plugin 'tpope/vim-eunuch'

Plugin 'scrooloose/nerdtree'

Plugin 'easymotion/vim-easymotion'

Plugin 'sjl/gundo.vim'

Plugin 'rking/ag.vim'

Plugin 'jeetsukumaran/vim-buffergator'

Plugin 'w0ng/vim-hybrid'

Plugin 'mattn/emmet-vim'

Plugin 'joshdick/onedark.vim'

Plugin 'szw/vim-maximizer'

Plugin 'joshdick/airline-onedark.vim'

Plugin 'leafgarland/typescript-vim'

Plugin 'Valloric/YouCompleteMe'

Plugin 'wakatime/vim-wakatime'

Plugin 'schickling/vim-bufonly'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on
