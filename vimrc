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
set synmaxcol=300               " Limit syntax highlight to improve performance
set backspace=indent,eol,start

" This makes vim act like all other editors, buffers can exist in the background without being in a window.
set hidden
" Turn on syntax highlighting
syntax on

" The mapleader has to be set before vimplug starts loading all the plugins.
let mapleader=" "
nmap <leader>w :w!<cr>
nmap <leader>x :x!<cr>
nmap <leader>q :q<cr>
noremap <C-P> :FZF<CR>
noremap <C-B> :Buffers<CR>
noremap <C-F> :Ag<CR>

" Enable TAB complete for set commands and file search
set wildmenu
set wildmode=full

" Automatically resize splits after Tmux zoom etc.
autocmd VimResized * wincmd =

" =============== Plug Initialization ===============

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

if empty(glob('~/.vim/plugins.vim'))
  silent !curl -fLo ~/.vim/plugins.vim --create-dirs
    \ https://raw.githubusercontent.com/akz92/dotfiles/master/plugins.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" This loads all the plugins specified in ~/.vim/plugins.vim
if filereadable(expand("~/.vim/plugins.vim"))
  source ~/.vim/plugins.vim
endif

" =============== Theme ===============

if has('termguicolors')
  set termguicolors
endif
set background=dark
colorscheme onedark

let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================

" Keep undo history across sessions, by storing in file.

call system('mkdir ~/.vim/undo')
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

filetype plugin indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=2       "deepest fold is 3 levels
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

" ================ Splits ======================

"Move tabs more naturally
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open new split panes to right and bottom
set splitbelow
set splitright

" ================ Movements ======================

" highlight last inserted text
nnoremap gV `[v`]

" ================ Buffers ======================

" Close buffer only
nmap <leader>bq :bp <BAR> bd #<cr>

" ================ Abbreviations ======================

iabbr bpry binding.pry
iabbr rbpry binding.remote_pry
iabbr dbg debugger;
iabbr clog console.log('foo');

" ================ Tests ======================

" make test commands execute using dispatch.vim
let test#strategy = 'vimux'
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>l :TestLast<CR>

" ================ UltiSnips ======================

" let g:UltiSnipsEditSplit = 'horizontal'
" let g:UltiSnipsListSnippets = '<nop>'
" let g:UltiSnipsExpandTrigger = '<c-l>'
" let g:UltiSnipsJumpForwardTrigger = '<c-l>'
" let g:UltiSnipsJumpBackwardTrigger = '<c-b>'
" let g:ulti_expand_or_jump_res = 0

" ================ Text Objects ================

for char in [ '-', '_', '.', ':', ',', ';', '<bar>', '/', '<bslash>', '*', '+', '%', '`' ]
  execute 'xnoremap i' . char . ' :<C-u>normal! T' . char . 'vt' . char . '<CR>'
  execute 'onoremap i' . char . ' :normal vi' . char . '<CR>'
  execute 'xnoremap a' . char . ' :<C-u>normal! F' . char . 'vf' . char . '<CR>'
  execute 'onoremap a' . char . ' :normal va' . char . '<CR>'
endfor

" ================ Auto Complete ==============

" Disable AutoComplPop.
" let g:acp_enableAtStartup = 0
" Use neocomplete.
" let g:neocomplete#enable_at_startup = 1
" Use smartcase.
" let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
" let g:neocomplete#sources#syntax#min_keyword_length = 3

" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Plugin key-mappings.
" imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" imap <C-k>     <Plug>(neosnippet_expand_or_jump)

" let g:neosnippet#enable_snipmate_compatibility = 1
" let g:neosnippet#snippets_directory='~/.vim/snippets/'

" :lua << END
"   require'nvim_lsp'.solargraph.setup{}
" END

" let g:deoplete#enable_at_startup = 1
" set omnifunc=lsp#omnifunc

" nnoremap <silent>gd    <cmd>lua vim.lsp.buf.declaration()<CR>
" nnoremap <silent><c-]> <cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap <silent>K     <cmd>lua vim.lsp.buf.hover()<CR>

" ================ Lint =======================

nmap <leader>an :ALENext<cr>
nmap <leader>ap :ALEPrevious<cr>
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {
\   'html': [],
\   'ruby': ['rubocop']
\}
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'ruby': ['rubocop'],
\   'scss': ['prettier'],
\   'css': ['prettier']
\}
let g:ale_fix_on_save = 1
let g:ale_ruby_rubocop_executable = 'bundle'
let g:ale_ruby_rubocop_options = '--safe-auto-correct --force-exclusion'

" ================ Others ======================

" Disable automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" Automatically remove trailling whitespaces
fun! StripTrailingWhitespace()
    " Don't strip on these filetypes
    if &ft =~ 'yaml'
        return
    endif
    %s/\s\+$//e
endfun

autocmd BufWritePre * call StripTrailingWhitespace()

" Dash search plugin
" if exists('g:loaded_dash')
"   finish
" endif
" let g:loaded_dash = 1
"
" function! s:Dash(search)
"   exec 'silent !open "dash://' . join(split(a:search), ':') . '"'
"   redraw!
" endfunction
"
" command! -bar -nargs=+ Dash call s:Dash(<q-args>)
" nnoremap dx :Dash <C-R>=&filetype<CR> <cword><CR>

" Set syntax for inky-haml
augroup twig_ft
  au!
  autocmd BufNewFile,BufRead *.inky-haml set syntax=haml
augroup END
