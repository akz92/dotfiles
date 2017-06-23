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
set guifont=Monaco:h14
set timeoutlen=1000 ttimeoutlen=0

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
noremap <C-P> :FZF<CR>
noremap <C-B> :Buffers<CR>
nmap <leader>an :ALENext<cr>
nmap <leader>ap :ALEPrevious<cr>

" =============== Plug Initialization ===============

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" This loads all the plugins specified in ~/.vim/plugins.vim
if filereadable(expand("~/.vim/plugins.vim"))
  source ~/.vim/plugins.vim
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
" nnoremap p p=`]<C-o>
" nnoremap P P=`]<C-o>

filetype plugin indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" Automatically remove trailling whitespaces
autocmd BufWritePre * :%s/\s\+$//e

let b:lion_squeeze_spaces=1

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
" let g:far#source="ag"


" ================ Splits ======================

"Move tabs more naturally
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open new split panes to right and bottom
set splitbelow
set splitright

" ================ Explorer ======================

let g:netrw_liststyle=3
let g:netrw_banner = 0
nnoremap <Leader>e :NERDTreeFind<CR>

" ================ Movements ======================

" highlight last inserted text
nnoremap gV `[v`]

" save session
nnoremap <leader>s :mksession<CR>

" ================ Buffers ======================

" Close buffer only
nmap <leader>bq :bp <BAR> bd #<cr>

" ================ Abbreviations ======================

iabbr pry binding.pry
iabbr dbg debugger;
iabbr log console.log('foo');

" ================ Tags ======================

" nnoremap <C-]> <Esc>:exe "ptjump " . expand("<cword>")<Esc>

" ================ Tests ======================

" make test commands execute using dispatch.vim
let test#strategy = "dispatch"
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>l :TestLast<CR>

" ================ UltiSnips ======================

let g:UltiSnipsEditSplit = 'horizontal'
let g:UltiSnipsListSnippets = '<nop>'
let g:UltiSnipsExpandTrigger = '<c-l>'
let g:UltiSnipsJumpForwardTrigger = '<c-l>'
let g:UltiSnipsJumpBackwardTrigger = '<c-b>'
let g:ulti_expand_or_jump_res = 0

" ================ NERDTree ======================

let g:NERDTreeMinimalUI = 1
let g:NERDTreeHijackNetrw = 0
let g:NERDTreeWinSize = 31
let g:NERDTreeChDirMode = 2
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeCascadeOpenSingleChildDir = 1

"Quit vim if only open buffer is NerdTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ================ Text Objects ================

for char in [ '-', '_', '.', ':', ',', ';', '<bar>', '/', '<bslash>', '*', '+', '%', '`' ]
  execute 'xnoremap i' . char . ' :<C-u>normal! T' . char . 'vt' . char . '<CR>'
  execute 'onoremap i' . char . ' :normal vi' . char . '<CR>'
  execute 'xnoremap a' . char . ' :<C-u>normal! F' . char . 'vf' . char . '<CR>'
  execute 'onoremap a' . char . ' :normal va' . char . '<CR>'
endfor

" ================ Auto Complete ==============

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)

let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.vim/snippets/'

" ================ Others ======================

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Tell syntastic to ignore ionic and angular tags
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

let g:netrw_nogx = 1 " disable netrw's gx mapping.
