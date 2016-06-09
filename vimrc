" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" ================ General Config ====================

set number
set numberwidth=4
set enc=utf-8
set laststatus=2                " Always display the status line
set autowrite                   " Automatically :write before running commands
set visualbell                  " No sounds
set showcmd                     " Show incomplete cmds down the bottom
set autoread                    " Reload files changed outside vim
set cursorline                  " Highlight current line
set colorcolumn=80              " Display a vertical line on the 80th line
set autochdir                   " Set current directory to be the same as the current file
set guifont=Monaco:h14

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

syntax on                       " Turn on syntax highlighting

" The mapleader has to be set before vundle starts loading all
" the plugins.
let mapleader=" "
nmap <leader>w :w!<cr>
nmap <leader>x :x!<cr>
nmap <leader>q :q<cr>

" =============== Vundle Initialization ===============

" This loads all the plugins specified in ~/.vim/vundles.vim
" Use Vundle plugin to manage all other plugins
if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif

" =============== Theme ===============

let g:airline_theme='onedark'
set termguicolors

set background=dark
colorscheme onedark

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================

" Keep undo history across sessions, by storing in file.
call system('mkdir -p ~/.vim/undo')
set undofile
set undodir=~/.vim/undo

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

filetype plugin indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" Automatically remove trailling whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" Automatically toggle paste mode
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set nohlsearch        " Doens't highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" The Silver Searcher
if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" When you press gv you Ag after the selected text
vnoremap <silent> gv :call VisualSelection('gv', '')<CR>

" map <leader>a :Ag
" map <leader>n :cn<cr>
" map <leader>p :cp<cr>
" map <leader>nf :cnf<cr>
" map <leader>pf :cpf<cr>

" ================ Splits ======================

"Move tabs more naturally
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open new split panes to right and bottom
set splitbelow
set splitright

" Maximize split
nnoremap <Leader>ff :MaximizerToggle<CR>

" ================ Explorer ======================

let g:netrw_liststyle=3
let g:netrw_banner = 0
nnoremap <Leader>e :NERDTree<CR>

" ================ Movements ======================

" move to beginning/end of line
" nnoremap B ^
nnoremap E $

" highlight last inserted text
nnoremap gV `[v`]

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" save session
nnoremap <leader>s :mksession<CR>

" ================ Buffers ======================

" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'

" I want my own keymappings...
let g:buffergator_suppress_keymaps = 1

" Looper buffers
"let g:buffergator_mru_cycle_loop = 1

" Go to the previous buffer open
nmap <leader>jj :BuffergatorMruCyclePrev<cr>

" Go to the next buffer open
nmap <leader>kk :BuffergatorMruCycleNext<cr>

" View the entire list of buffers open
nmap <leader>bb :BuffergatorToggle<cr>

" Close buffer (closes it's slit too)
nmap <leader>bd :bd<cr>

" Close buffer only
nmap <leader>bq :bp <BAR> bd #<cr>

" Enable the list of buffers
" let g:airline#extensions#tabline#enabled = 1

" Show just the filename
" let g:airline#extensions#tabline#fnamemod = ':t'

" ================ Abbreviations ======================

iabbr pry binding.pry
iabbr dbg debugger;
iabbr log console.log('foo');

" ================ Rails ======================

cmap rc Rails console

" ================ Tags ======================

nnoremap <C-]> <Esc>:exe "ptjump " . expand("<cword>")<Esc>

" ================ Others ======================

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Tell syntastic to ignore ionic tags
let g:syntastic_html_tidy_ignore_errors=["<ion-", "discarding unexpected </ion-", " proprietary attribute \"ng-"]

" Mkdir on file save if dir doesnt exist
function s:MkNonExDir(file, buf)
    if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
        let dir=fnamemodify(a:file, ':h')
        if !isdirectory(dir)
            call mkdir(dir, 'p')
        endif
    endif
endfunction
augroup BWCCreateDir
    autocmd!
    autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END

" Move lines using Ctrl+j and Ctrl+k
" nnoremap <C-j> :m .+1<CR>==
" nnoremap <C-k> :m .-2<CR>==
" inoremap <C-j> <Esc>:m .+1<CR>==gi
" inoremap <C-k> <Esc>:m .-2<CR>==gi
" vnoremap <C-j> :m '>+1<CR>gv=gv
" vnoremap <C-k> :m '<-2<CR>gv=gv

function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("Ag \"" . l:pattern . "\" " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
