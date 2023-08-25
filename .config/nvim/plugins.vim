"setup vim-plug {{{
  "Note: install vim-plug if not present
  if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
  endif

  "Note: Skip initialization for vim-tiny or vim-small.
  if !1 | finish | endif
  if has('vim_starting')
    set nocompatible               " Be iMproved
    " Required:
    call plug#begin('~/.local/share/nvim/bundle')
  endif
"}}}

"Plugins {{{1

" Post commit update hooks
function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !./install.sh
  endif
endfunction

"Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') } " using system YCM
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'sirver/ultisnips'                     " Snippet system
"Plug 'Shougo/neosnippet.vim'
Plug 'honza/vim-snippets'                   " Collection of snippets for use with UltiSnips

" Filetype plugins
"
" Programming languages
"Plug 'sheerun/vim-polyglot'                 " Suppurt a large number of programming languages
"Plugin 'w0rp/ale'                             " Asynchronously call linters for various languages; conflicts with neomake

"Plug 'equalsraf/neovim-gui-shim'            " Provide GuiFont and GuiLinespace commands

Plug 'kongo2002/fsharp-vim'                 " F#
Plug 'fatih/vim-go'                         " Go mode
Plug 'ddollar/golang-template.vim'          " Go templates
Plug 'idris-hackers/idris-vim'              " Idris
Plug 'pangloss/vim-javascript'              " JavaScript
"Plug 'JuliaLang/julia-vim'                  " Julia

" Disabled because it conflicts with jedi-vim and I want to have
" jedi for autocompletion
"Plug 'python-mode/python-mode', { 'branch': 'develop'} " Python

"installed via pacman
"Plug 'davidhalter/jedi-vim'                 " Autocomplete support for Python

Plug 'wlangstroth/vim-racket'               " Racket
Plug 'dag/vim-fish'                         " Fish syntax highlighting
Plug 'rust-lang/rust.vim'                   " Rust
Plug 'neovimhaskell/haskell-vim'            " Haskell
Plug 'itchyny/vim-haskell-indent'           " proper indentation
"Plugin 'dag/vim2hs'                          " Haskell
Plug 'vim-scripts/VimClojure'               " Clojure
Plug 'LnL7/vim-nix'                         " Nix expressions
Plug 'jceb/vim-orgmode'                     " org mode
Plug 'mustache/vim-mustache-handlebars'     " Handlebars syntax highlighting
Plug '1995parham/vim-zimpl'                 " ZIMPL modelling language (used by SCIP) for mixed integer programming
Plug 'vim-scripts/a.vim'                    " Alternate between .c and .h files by executing :A
Plug 'vim-scripts/omlet.vim'                " OCaml syntax highlighting
Plug 'rhysd/vim-clang-format'               " Automatically format C, C++, Objective C, Java, JavaScript
Plug 'ARM9/arm-syntax-vim'                  " ARM assembly
Plug 'leafgarland/typescript-vim'           " Typescript syntax highlighting
Plug 'nickhutchinson/vim-cmake-syntax'      " CMake
Plug 'yzhs/mercury-vim', { 'branch': 'vim-plugin' } " Mercury (functional logic programming language)
Plug 'JDevlieghere/llvm.vim'                " LLVM *.ll and tablegen *.td
Plug 'artur-shaik/vim-javacomplete2'        " Java semantic completion
Plug 'purescript-contrib/purescript-vim'    " Purescript
Plug 'vmchale/ion-vim'                      " Ion shell
Plug 'heaths/vim-msbuild'                   " MSBuild
Plug 'leanprover/lean.vim'                  " Lean theorem prover

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Formal grammars
Plug 'rollxx/vim-antlr'                     " ANTLR compiler generator
Plug 'killphi/vim-ebnf'                     " Extended Backus-Naur-Form

" Mathematical
Plug 'petRUShka/vim-gap'                    " GAP
Plug 'petRUShka/vim-sage'                   " SageMath
Plug 'vale1410/vim-minizinc'                " MiniZinc constraint solver

" Proof assistants
Plug 'derekelkins/agda-vim'                 " Agda
Plug 'ahf/twelf-syntax'                     " Twelf formal proof system

Plug 'vim-scripts/scons.vim'                " Syntax highlighting for SCons
Plug 'stfl/meson.vim'                       " Support for meson.build

" Configuration and serialization formats
Plug 'ClockworkNet/vim-apparmor'            " Apparmor configuration format
Plug 'chrisbra/csv.vim'                     " CSV
Plug 'cespare/vim-toml'                     " TOML markup format
Plug 'Matt-Deacalion/vim-systemd-syntax'    " Systemd configuration format
Plug 'peterhoeg/vim-qml'                  " QML GUI markup
Plug 'hjson/vim-hjson'                      " Human readable alternative to JSON
Plug 'robbles/logstash.vim'

" Text formats
Plug 'gerw/vim-latex-suite'                 " (La)TeX
Plug 'fasiha/pollen.vim'                    " The Pollen publishing system/markup language
Plug 'plasticboy/vim-markdown'              " Markdown mode
"Plugin 'euclio/vim-markdown-composer'         " Markdown life preview
Plug 'vim-pandoc/vim-pandoc-syntax'         " Pandoc markdown mode (useful for highlighting Mmark)
"Plugin 'rhysd/vim-gfm-syntax'                 " Github flavored markdown
"Plugin 'yzhs/vim-flavored-markdown'           " Github flavored markdown

" Other
Plug 'vim-scripts/AnsiEsc.vim'              " Display colored text from the terminal
Plug 'jamessan/vim-gnupg'                   " Automatically en-/decrypt GnuPG encrypted files
Plug 'editorconfig/editorconfig-vim'        " respect .editorconfig files
Plug 'jremmen/vim-ripgrep'                  " Fast fulltext search using ripgrep
Plug 'jinh0/eyeliner.nvim'                  " Highlight unique characters in the current line. Useful to find f/F targets.

"
" User interface
"
Plug 'bling/vim-airline'

"
" Programming
"
Plug 'tpope/vim-classpath'                  " Automatically set 'path' by inspecting the Java classpath
Plug 'nathanaelkane/vim-indent-guides'      " Visually highlight indentation using alternating colors
Plug 'eagletmt/neco-ghc'                    " Haskell completion using ghc-mod
Plug 'benekastah/neomake'                   " A plugin for asynchronous :make using Neovim's job-control functionality; conflicts with ale
Plug 'scrooloose/nerdcommenter'             " Manipulate comments using short cuts
Plug 'vim-scripts/paredit.vim'              " Manipulate balanced brackets
Plug 'luochen1990/rainbow'                  " Color brackets by nesting depth
Plug 'jpalardy/vim-slime'                   " Send code to an arbitrary interpreter running inside of tmux or Screen
Plug 'rstacruz/sparkup'                     " Quickly write complex HTML code
Plug 'vim-scripts/SyntaxRange'              " Allow different regions of a file to be highlighted differently
Plug 'vim-scripts/utl.vim'                  " Allow links in plain text files including navigation

"" " Intelligent auto completion
"" Plug 'autozimu/LanguageClient-neovim', {
""     \ 'branch': 'next',
""     \ 'do': 'bash install.sh',
""     \ }
""
"" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"" let g:LanguageClient_serverCommands = {
""     \ 'rust': ['/usr/bin/rustup', 'run', 'nightly', 'rls'],
""     \ }
"" "    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
"" "    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
"" "    \ 'python': ['/usr/local/bin/pyls'],
""
"" nnoremap <F5> :call LanguageClient_contextMenu()<CR>
"" " Or map each action separately
"" nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
"" nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
"" nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

"Plug 'ncm2/ncm2'
"Plug 'roxma/nvim-yarp'                      " Needed for ncm2
"
"" enable ncm2 for all buffers
"autocmd BufEnter * call ncm2#enable_for_buffer()
"
"" IMPORTANT: :help Ncm2PopupOpen for more information
"set completeopt=noinsert,menuone,noselect
"
"" ncm2 plugins
"Plug 'ncm2/ncm2-racer'
""Plug 'ncm2/ncm2-pyclang'
"Plug 'ncm2/ncm2-go'


"Plug 'majutsushi/tagbar'                    " Outline the programm structure using ctags
Plug 'mptre/vim-printf'                     " Turn a comma-separated list of terms into a statement printing those terms

Plug 'evidanary/grepg.vim'                  " Search GrepPage.com for quick manuals

Plug 'AndrewRadev/deleft.vim'               " Delete surrounding code, e.g. an if statement

" Convert units, base, hex/rgb/hsl, etc.
"Plug 'simonefranza/nvim-conv'
Plug 'glts/vim-magnum'
Plug 'glts/vim-radical'

"
" Color schemes
"
"Plug 'lisposter/vim-blackboard'
"Plug 'tomasr/molokai'
Plug 'tpope/vim-vividchalk'
"Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

" VCS
"Plug 'tpope/vim-fugitive'                   " Git
"Plug 'git://repo.or.cz/vcscommand'

"
"General text editing
"
" Text objects
Plug 'kana/vim-textobj-indent'
Plug 'reedes/vim-textobj-quote'
Plug 'reedes/vim-textobj-sentence'
Plug 'kana/vim-textobj-user'
Plug 'coderifous/textobj-word-column.vim'

Plug 'christoomey/vim-titlecase'
Plug 'godlygeek/tabular'                    " Align text in columns by specifying separaters with a regular expression
Plug 'mattn/vim-maketable'                  " Create a Markdown-style table from CSV

Plug 'salsifis/vim-transpose'               " Transpose a block of text or a table
Plug 'reedes/vim-one'                       " Only run one instance of the Vim server
Plug 'reedes/vim-pencil'                    " Automatically reflow text while typing
Plug 'reedes/vim-wordy'                     " Highlight word usage problems, e.g. excessive use of passive voice
Plug 'tpope/vim-abolish'                    " Easily search for and substitute similar words (using :Subvert/...)
Plug 'tpope/vim-afterimage'                 " Edit raster images inside Vim by converting them to XPM, with syntax highlighting
Plug 'tpope/vim-characterize'               " Display Unicode character names when pressing ga
Plug 'tpope/vim-commentary'                 " Manipulate comments using gc<motion> or gcc (for current line) (like nerdcommenter?)
Plug 'tpope/vim-endwise'                    " Automatically end structures like if ... endif, def ... endfunction (VimL, Bash, VisualBasic, C, Lua)
Plug 'tpope/vim-eunuch'                     " Provide some shell commands as Vim commands, e.g. :Remove deletes a buffer and the corresponding file
Plug 'tpope/vim-fireplace'                  " Clojure REPL
Plug 'tpope/vim-repeat'                     " Repeat actions using . that cannot normally be repeated, like surrounding, manipulating a date, etc.
Plug 'tpope/vim-sensible'                   " Set sane defaults for 'backspace', 'incsearch', 'listchars', etc.
Plug 'tpope/vim-sleuth'                     " Automatically try to set 'sw' and 'et' depending on what the current file seems to use
Plug 'tpope/vim-speeddating'                " Increment or decrement dates using C-a and C-x and other useful functions related to dates and times
"Plugin 'tpope/vim-surround'                   " Surround text using cs, ds, ys
Plug 'machakann/vim-sandwich'               " Replacement for tpope's vim-surround: Surround text using sd, sr, sa
Plug 'sk1418/Join'                          " Better :join

"Plugin 'tpope/vim-vinegar'                    " Some improvements for using the netrw file browser
Plug 'terryma/vim-expand-region'            " Expand and shrink visual selection using + or _ taking syntax into account
Plug 'Raimondi/delimitMate'                 " Automatically close quotes, brackets, etc.

Plug 'wellle/tmux-complete.vim'             " Use other tmux panes to provide completion data

Plug 'yzhs/notmuch-abook'                   " Access the notmuch address book

Plug 'rhysd/nyaovim-markdown-preview'       " Live markdown preview for nyaovim

Plug 'rhysd/vim-grammarous'                 " Grammar checking in, among others, English and German using LanguageTool
Plug 'Ron89/thesaurus_query.vim'            " Query a bunch different thesauruses

Plug 'justinmk/vim-gtfo'                    " Open a terminal or file manager window in the current working directory
Plug 'qpkorr/vim-renamer'                   " Rename the files in a directory
Plug 'tbodt/pace.vim'                       " Measure the pace of typing

" Quickly open files by pressing C-p and typing part of the file name
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'                     " Quickly open files by pressing C-p and typing part of the file name
Plug 'ctrlpvim/ctrlp.vim'                    " Quickly open files by pressing C-p and typing part of the file name

Plug 'haya14busa/incsearch.vim'              " Highlight search matches incrementally, disabeling highlights again after you are done searching


" Spell checking
"Plugin 'Konfekt/vim-guesslang' " Automatically detect the language used in a given buffer

" Quickly and easily access RFCs
Plug 'mhinz/vim-rfc'

" All of your Plugins must be added before the following line
call plug#end() " required
