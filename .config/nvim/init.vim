source ~/.config/nvim/plugins.vim

" Set the color scheme
set background=dark
colorscheme vividchalk
"colorscheme koehler
"colorscheme base16-bright
"colorscheme blackboard
"colorscheme vibrantink

source $HOME/.config/nvim/options.vim

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Define some parameters for plugins {{{1
let g:gtfo#terminals = { 'unix': 'xfce4-terminal --working-directory' }

" Go syntax highlighting settings
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_sameids = 1 " highlight other occurrences of the variable the cursor is on right now

" vim-gfm (GitHub flavored Markdown) settings
let g:gfm_syntax_highlight_inline_code   = 1
let g:gfm_syntax_highlight_mention       = 0
let g:gfm_syntax_highlight_strikethrough = 0
let g:gfm_syntax_highlight_emoji         = 0
let g:gfm_syntax_highlight_table         = 1
let g:gfm_syntax_highlight_issue_number  = 0
let g:gfm_syntax_highlight_checkbox      = 1

" vim-markdown settings
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1


" Error and warning signs.
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'

" Enable integration with airline.
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 2
let g:airline#extensions#whitespace#checks = ['indexnt', 'trailing', 'long']


let g:tex_flavor               = "latex"
let g:Tex_PackagesMenu         = 0
let g:Tex_SmartKeyQuote        = 0 " Do not replace quotes automatically
let g:Tex_DefaultTarget_Format = 'pdf'
let g:Tex_ViewRule_dvi         = 'zathura'
let g:Tex_ViewRule_pdf         = 'zathura'
let g:Tex_ViewRule_ps          = 'zathura'

let g:Tex_Env_axiom       = "\\begin{axiom}\\label{ax:<++>}\<CR><++>\<CR>\\end{axiom}\<CR><++>"
let g:Tex_Env_assumption  = "\\begin{assumption}\\label{ass:<++>}\<CR><++>\<CR>\\end{assumption}\<CR><++>"
let g:Tex_Env_cor         = "\\begin{corollary}\\label{cor:<++>}\<CR><++>\<CR>\\end{corollary}\<CR><++>"
let g:Tex_Env_corollary   = "\\begin{corollary}\\label{cor:<++>}\<CR><++>\<CR>\\end{corollary}\<CR><++>"
let g:Tex_Env_def         = "\\begin{definition}\\label{def:<++>}\<CR><++>\<CR>\\end{definition}\<CR>\<CR><++>"
let g:Tex_Env_definition  = "\\begin{definition}\\label{def:<++>}\<CR><++>\<CR>\\end{definition}\<CR>\<CR><++>"
let g:Tex_Env_example     = "\\begin{example}\\label{ex:<++>}\<CR><++>\<CR>\\end{example}\<CR>\<CR><++>"
let g:Tex_Env_lem         = "\\begin{lemma}\\label{lem:<++>}\<CR><++>\<CR>\\end{lemma}\<CR><++>"
let g:Tex_Env_lemma       = "\\begin{lemma}\\label{lem:<++>}\<CR><++>\<CR>\\end{lemma}\<CR><++>"
let g:Tex_Env_prop        = "\\begin{proposition}\\label{prop:<++>}\<CR><++>\<CR>\\end{proposition}\<CR><++>"
let g:Tex_Env_proposition = "\\begin{proposition}\\label{prop:<++>}\<CR><++>\<CR>\\end{proposition}\<CR><++>"
let g:Tex_Env_proof       = "\\begin{proof}\<CR><++>\<CR>\\end{proof}\<CR>\<CR><++>"
let g:Tex_Env_rem         = "\\begin{remark}\\label{rem:<++>}\<CR><++>\<CR>\\end{remark}\<CR>\<CR><++>"
let g:Tex_Env_remark      = "\\begin{remark}\\label{rem:<++>}\<CR><++>\<CR>\\end{remark}\<CR>\<CR><++>"
let g:Tex_Env_thm         = "\\begin{theorem}\\label{thm:<++>}\<CR><++>\<CR>\\end{theorem}\<CR><++>"
let g:Tex_Env_theorem     = "\\begin{theorem}\\label{thm:<++>}\<CR><++>\<CR>\\end{theorem}\<CR><++>"
let g:Tex_Env_component   = "\\begin{component}[<++>]\<CR><++>\<CR>\\end{component}\<CR><++>"
let g:Tex_Env_minted      = "\\begin{minted}{gap}\<CR><++>\<CR>\\end{minted}\<CR><++>"

let g:Tex_FoldedSections    = ""
let g:Tex_FoldedEnvironment = ""
let g:Tex_FoldedMisc        = ""

let g:haskell_conceal   = 0
let g:haskell_indent_if = 0
let g:haskell_haddock   = 1
let g:haddock_browser   = "firefox"

let omlet_indent_let = 0
let g:clj_highligt_builtins=1

let g:slime_target         = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "0"}
let g:slime_paste_file     = '~/.cache/slime_paste'
let g:slime_python_ipython = 1

let g:pymode_python = 'python3'
let g:pymode_folding = 0

"let g:syntastic_racket_code_ayatollah_script = '~/bin/code-ayatollah.rkt'
let g:syntastic_enable_racket_racket_checker = 1

let g:rainbow_active = 1

" If an instance of VIM tries to open a file already opened by another
" instance, switch to that other instance.
let g:one#handleSwapfileConflicts = 1

" Do not convert ASCII quotes to Unicode quotes automatically.
let g:textobj#quote#educate = 0

" Uncomment the following lines to use German quotes
"let g:textobj#quote#doubleDefault = '„“'     " „doppel“
"let g:textobj#quote#singleDefault = '‚‘'     " ‚einzel‘

" When formatting text, insert an additional space after periods, exclamation
" marks and question marks.
let g:pencil#joinspaces = 0 " TODO Does this do what the comment says it does?

" Use specialized packages to handle Julia and LaTeX files.
let g:polyglot_disabled = ['latex', 'julia']


" Alternate light and dark line background
"if &background == "dark"
"  hi IndentGuidesOdd  ctermbg=black
"  hi IndentGuidesEven ctermbg=darkgrey
"else
"  hi IndentGuidesOdd  ctermbg=white
"  hi IndentGuidesEven ctermbg=lightgrey
"endif


"
" NERD Commenter
"
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
"let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
"let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
"let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


"
" thesaurus_query.vim
"
let g:tq_map_keys = 0
if has('vim_starting')
  nnoremap <unique><silent> <Leader>ts :ThesaurusQueryReplaceCurrentWord<CR>
  vnoremap <unique><silent> <Leader>ts "ky:ThesaurusQueryReplace <C-r>k<CR>
  nnoremap <silent> <LocalLeader>ts :ThesaurusQueryReplaceCurrentWord<CR>
  vnoremap <silent> <LocalLeader>ts "ky:ThesaurusQueryReplace <C-r>k<CR>
endif

" Backends
let g:tq_enabled_backends=["woxikon_de", "thesaurus.com"]
let g:tq_language=['en', 'de']

" Show open buffers using airline
"let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t' " Just the filename

" Open URLs in firefox by pressing gx
let g:netrw_browsex_viewer = 'firefox'

let g:neomake_c_enable_markers   = ['clang']
let g:neomake_cpp_enable_markers = ['clang']
let g:neomake_c_clang_args       = ["-Wextra", "-Wall", "-fsanitize=undefined","-g","-pedantic", "-std=gnu99"]
let g:neomake_cpp_clang_args     = ["-Wextra", "-Wall", "-fsanitize=undefined","-g","-pedantic", "-std=c++14"]

"let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'


" YouCompleteMe {{{2
" Use YouCompleteMe to automatically complete Haskell code (using neco-ghc?)
let g:ycm_semantic_triggers = {'haskell' : ['.']}
let g:ycm_global_ycm_extra_conf = '~/.config/ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

" Rust completion support using racer
let g:racer_cmd = "$HOME/.cargo/bin/racer"
let g:ycm_rust_src_path = "/home/yzhs/src/rust/rust/src"

" Format rust code using rustfmt when saving
let g:rustfmt_autosave = 1

" UltiSnips {{{2
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<C-l>"
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"



" Commands {{{1
command! De :set spelllang=de
command! En :set spelllang=en_gb

" Write file as root
cmap w!! w !sudo tee % >/dev/null

" File type specific settings {{{1
" remind configuration files
au BufRead .reminders if exists("b:current_syntax") && b:current_syntax == "remind"
au BufRead .reminders    let nowdatetime = strftime("%Y%m%d.%H%M%S")
au BufRead .reminders    execute "set backupext=." . nowdatetime
au BufRead .reminders endif

" Haskell
au FileType haskell setlocal sts=2 sw=2 et omnifunc=necoghc#omnifunc
"au FileType haskell compiler ghc
au FileType haskell syn region interpolatedText start="\[q\(\|c\|q\)|" end="|\]" contains=hsSpecialChar
au FileType haskell hi link interpolatedText hsString

" (La)TeX
au FileType tex setlocal spell tw=80 ts=2 sw=2 sts=2 et
" allow the use of rubber for debugging
au FileType tex setlocal makeprg=rubber-info\ ba.log
au FileType tex setlocal errorformat=%f:%l:\ %m
" Without the following settings, vim will be very slow on large TeX files
au FileType tex :NoMatchParen
au FileType tex setlocal nocursorline
function! SyncTexForward()
  let execstr = "silent !okular --unique %:p:r.pdf\#src:".line(".")."%:p &"
  exec execstr
endfunction
nmap <Leader>f :call SyncTexForward()<CR>

" OCaml mode
au FileType omlet              setlocal indentkeys+=,!^I

" ANTLR parser generator and template languages
au FileType antlr4             setlocal ts=4 sw=4 et
au FileType stringtemplate     setlocal ts=4 sw=4 et

au FileType asciidoc           setlocal spell tw=80
au FileType julia              setlocal ts=2 sw=2 sts=2 et
au FileType javascript         setlocal ts=2 sw=2 sts=2 et
au FileType python             setlocal ts=4 sw=4 et tw=71
au FileType racket             setlocal lisp autoindent et
au FileType rst                setlocal spell
au FileType ruby               setlocal ts=2 sw=2 sts=2 et
au FileType scala              setlocal ts=2 sw=2 et
au FileType vim                setlocal ts=4 sw=4 et
au FileType zimpl              setlocal ts=2 sw=2 sts=2 et
au FileType zinc               setlocal ts=2 sw=2 sts=2 et
au FileType meson              setlocal ts=2 sw=2 sts=2 et

au FileType rust               setlocal ts=4 sw=4 et tw=98
au FileType rust               compiler cargo
au FileType rust               setlocal commentstring=//\ %s makeprg=cargo\ check\ --color=never\ 2>&1\\\|sed\ -E\ 's/\ \ -->\ //'

au FileType mail               setlocal spell
au FileType lips,racket,scheme setlocal equalprg=scmindent.rkt
au FileType gap                setlocal tw=78 ts=4 sw=4 sts=4 et

au FileType markdown,ghmarkdown setlocal tw=80 spell linebreak foldmethod=manual "formatoptions+=a
au FileType markdown,ghmarkdown setlocal ts=2 sw=2 sts=2 et
au FileType markdown,ghmarkdown setlocal cpoptions+=J " Dots followed by just one space are *not* the end of a sentance
au FileType markdown,ghmarkdown inoremap . .<C-g>u
au FileType markdown,ghmarkdown inoremap ! !<C-g>u
au FileType markdown,ghmarkdown inoremap ? ?<C-g>u
au FileType markdown,ghmarkdown inoremap : :<C-g>u

au FileType fish setlocal tw=79 ts=2 sw=2 sts=2 et
au FileType yaml setlocal ts=2 sw=2 sts=2 et

au FileType qml setlocal ts=4 sw=4 sts=4 et

" Debugging print statements in various languages
au FileType vim let b:printf_pattern = 'echom printf("%s", %s)'
au FileType c let b:printf_pattern = 'fprintf(stderr, __FILE__ ": %d\n", %s);'
au FileType go let b:printf_pattern = 'fmt.Printf("%v\n", %s)'
au FileType python let b:printf_pattern = 'print("%s".format(%s))'
au FileType julia let b:printf_pattern = 'echo %s'

" NOTE: fixes and issue with paredit.vim loading
au BufRead,BufNewFile *.jl let g:paredit_mode = 0 | call PareditInitBuffer()

au FileType java setlocal omnifunc=javacomplete#Complete
au FileType java nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
au FileType java imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
au FileType java nmap <F5> <Plug>(JavaComplete-Imports-Add
au FileType java imap <F5> <Plug>(JavaComplete-Imports-Add
au FileType java nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
au FileType java imap <F6> <Plug>(JavaComplete-Imports-AddMissing)
au FileType java nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
au FileType java imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)

" Automatically equalize splits whenever vim is being resized
autocmd VimResized * wincmd =


" Key bindings {{{1
"set pastetoggle=<F2>
if has('vim_starting')
  "nmap <silent> <F4> :set number!<CR>

  function! Preserve(command)
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    execute a:command
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
  endfunction
  nmap _$ :call Preserve("%s/\\s\\+$//e")<CR>
  nmap _= :call Preserve("normal gg=G")<CR>
  nmap _p vip:!par -w<c-r>=&tw<CR><CR>

""  nmap <silent> <C-S-tab> :tabprevious<CR>
""  nmap <silent> <C-tab> :tabnext<CR>
""  map <silent> <C-S-tab> :tabprevious<CR>
""  map <silent> <C-tab> :tabnext<CR>
""  imap <silent> <C-S-tab> <ESC>:tabprevious<CR>i
""  imap <silent> <C-tab> <ESC>:tabnext<CR>i

  nmap <C-S-tab> :tabprevious<CR>
  nmap <C-tab> :tabnext<CR>
  map <C-S-tab> :tabprevious<CR>
  map <C-tab> :tabnext<CR>
  imap <C-S-tab> <ESC>:tabprevious<CR>i
  imap <C-tab> <ESC>:tabnext<CR>i

  nnoremap <silent> <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
  nmap <silent> gm :<C-U>exe v:count . "tabmove"<CR>

  " Re-wrap current paragraph
  nnoremap <leader>q gqip

  " Select the last text pasted
  "nnoremap <leader>v V`]

  " Edit vimrc in a vertical split
  "nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

  fun! JumpToDef()
    if exists("*GotoDefinition_" . &filetype)
      call GotoDefinition_{&filetype}()
    else
      exe "norm! <C-]>"
    endif
  endf

  " Jump to tag
  nn <M-g> :call JumpToDef()<cr>
  ino <M-g> <esc>:call JumpToDef()<cr>i

  nmap <silent> <Leader>ig <Plug>IndentGuidesToggle

  " Outline the code structure in a new window
  nmap <F8> :TagbarToggle<CR>

  " Insert today's date
  nnoremap <F4> "=strftime("%Y.%m.%d")<CR>P
  inoremap <F4> <C-R>=strftime("%Y.%m.%d")<CR>

  " Quickly create debugging output
  nnoremap <Leader>p :Printf<CR>

  " Chane the last misspelled word to the first suggestion
  "imap <c-l> <c-g>u<Esc>[s1z=`]a<c-g>u

  "
  " Helpful functions and bindings for working with Alexandria
  "
  function! AlexandriaSaveAndExit()
    write
    silent !mv -i % ~/.alexandria/library
    silent !touch ~/.alexandria/latest_change
    quit
  endfunction

  " Move a scroll to the library directory and signal that the library has been
  " changed.
  function! AlexandriaSave()
    write
    silent !mv -i % ~/.alexandria/library
    silent !touch ~/.alexandria/latest_change
    if exists("g:last_template")
      let l:file = CloneTemplate(g:last_template)
      silent execute "edit " . expand(l:file)
    elseif
      quit
    endif
  endfunction

  nmap <silent> <F9> :call AlexandriaSave()<cr>
  nmap <silent> <F10> :call AlexandriaSaveAndExit()<cr>

  " Open new copy of the template with a randomly generated UUID as the file
  " name
  augroup netrw_mapping
    autocmd!
    autocmd filetype netrw call NetrwMapping()
  augroup END

  " Copy a given template to /tmp/foo.tex and return the path of the copy
  function! CloneTemplate(template)
    let l:uuid = expand(system("uuidgen -r|tr -d '\n'"))
    silent execute '!clone-template ' . a:template . ' ' . l:uuid
    return "/tmp/" . l:uuid . ".tex"
  endfunction

  " Get the template name from the current buffer and open a copy in a new tab
  function! OpenSelectedTemplate()
    let g:last_template = expand("<cWORD>")
    let path = CloneTemplate(g:last_template)
    execute "tabf " . path
  endfunction

  function! NetrwMapping()
    nmap <buffer> <silent> T :call OpenSelectedTemplate()<CR>
  endfunction

  nnoremap gD :YcmCompleter GoTo<CR>
endif

" Jump to previous/next warning or error
" ALE
"nmap <silent> [w <Plug>(ale_previous_wrap)
"nmap <silent> ]w <Plug>(ale_next_wrap)
" Neomake
nmap <silent> [w :lNext<CR>
nmap <silent> ]w :lnext<CR>

" When in a wrapped line, go to the character *visually* above/below the
" current one.
map <Up> gk
map <Down> gj

"map <silent> <C-p> :Files<CR>
map <silent> <F7> :set spell!<CR>

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

" Key bindings }}}

" Other
au Syntax * syn keyword Todo DEBT FIXME HACK NOTE REVIEW TODO XXX containedin=.*Comment

" vim: set foldenable :
