set showmatch           " show matching brackets
set guioptions-=T       " disable tool bar
set backup              " enable backup file creation
set nofoldenable        " disable folding by default
set foldmethod=marker   " force the use of explicit folding markers {{{ and }}}
set history=256
set mouse=a             " enable the mouse in vim (console) for all editing modes
set fencs+=iso8859-5    " add the iso8859-5 (cyrillic) to the list of supported file encodings
set number              " display line numbers
set cmdheight=1
set title " Show filename in window title

set lispwords+=public-method,override-method,private-method,syntax-case,syntax-rules

set grepprg=grep\ -nH\ $*
set backupdir=~/.local/share/nvim/backup
if !has('nvim')
  set undodir=~/.local/share/nvim/undo
  set directory=~/.local/share/nvim/swap
  set viminfo+=n~/.local/share/nvim/viminfo_vim
else
  set viminfo+=n~/.local/share/nvim/viminfo
endif

" Highlight matches during incremental search.  Disable highlights as soon as
" you are done searching.
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)


" Store undo information on disk
set undofile

" Spell checking and auto completion
set spelllang=en,de
let g:guesslang_langs = [ 'en_US', 'de_DE-neu' ]

set spellfile=~/.local/share/nvim/site/spell/foo.utf-8.add
set dictionary+=/usr/share/dict/american dictionary+=/usr/share/dict/ngerman
set thesaurus+=/usr/share/moby/mthes/mthesaur.txt
"set complete+=k,]
"set completeopt=longest,menuone

set smartcase
set ignorecase
"set formatprg=par
set formatoptions+=2j

set lazyredraw " Do not redraw screen while executing macros

" set listchars=tab:\|\  nolist

" Use standard regular expressions
"nnoremap / /\v
"vnoremap / /\v

" Replace all occurrences by default
set gdefault

" Load .vimrc from current directory
set exrc
" but make sure it can't do anything nasty
set secure

" Try to keep the cursor in the same column when moving around
set nostartofline

" Do not show the current mode, airline takes care of that
set noshowmode

" Indent wrapped lines
set breakindent
"set showbreak=\\\\\

" Use case aware completions even when ignorecase is set
set infercase

" Do not use syntax highlighting past a certain number of columns, which
" should speed up vim dramatically when editing files with very long lines.
set synmaxcol=400

" Ignore paths when matching wildcards
set wildignore+=*/target/*,*/node_modules/*,.git,.svn,.hg

" Make sure vim has access to a POSIX compatible shell
if &shell =~# 'fish$'
    set shell=bash
endif

" Autosave
"augroup autoSaveAndRead
"  autocmd!
"  autocmd TextChanged,InsertLeave,FocusLost * silent! wall
"  autocmd CursorHold * silent! checktime
"augroup END
