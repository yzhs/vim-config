au! BufRead,BufNewFile *.agda              setfiletype agda
au! BufRead,BufNewFile *.apsa              setfiletype markdown
au! BufRead,BufNewFile *.ari               setfiletype pascal
au! BufRead,BufNewFile *.boo               setfiletype boo
au! BufRead,BufNewFile *.ck                setfiletype ck
au! BufRead,BufNewFile *.clj               setfiletype clojure
au! BufRead,BufNewFile *.gf                setfiletype gf
au! BufRead,BufNewFile *.ijs,*.ijx         setfiletype j
au! BufRead,BufNewFile *.ll,*.lli          setfiletype llvm
au! BufRead,BufNewFile *.mediawiki         setfiletype mediawiki
au! BufRead,BufNewFile *.mmark             setfiletype pandoc
au! BufRead,BufNewFile *.mzn               setfiletype zinc
au! BufRead,BufNewFile *.dzn               setfiletype zinc
au! BufRead,BufNewFile *.objd              setfiletype objdasm
au! BufRead,BufNewFile *.pl                setfiletype perl
au! BufRead,BufNewFile *.plt               setfiletype gnuplot
au! BufRead,BufNewFile *.rc                setfiletype rust
au! BufRead,BufNewFile *.s,*.S             setfiletype gas
au! BufRead,BufNewFile *.scrbl             setfiletype scribble
au! BufRead,BufNewFile *.rkt,*.rktl        setfiletype racket
au! BufRead,BufNewFile *.stg               setfiletype stringtemplate
au! BufRead,BufNewFile *.td                setfiletype tablegen
au! BufRead,BufNewFile *.v                 setfiletype coq
au! BufRead,BufNewFile *.x                 setfiletype alex
au! BufRead,BufNewFile *.zpl               setfiletype zimpl

au! BufRead,BufNewFile *.sage,*.pyx,*.spyx set ts=4 sw=4 sts=4 et
au! BufRead,BufNewFile *.yaml              set ts=2 sw=2 et

" Astroid configuration
au! BufRead,BufNewFile ~/.config/astroid/config set syntax=json

" For GAP files
augroup gap
  " Remove all gap autocommands
  au!
  autocmd BufRead,BufNewFile *.g,*.gi,*.gd set filetype=gap comments=s:##\ \ ,m:##\ \ ,e:##\ \ b:#

  " I'm using the external program `par' for formating comment lines starting
  " with `##  '. Include these lines only when you have par installed.
  autocmd BufRead,BufNewFile *.g,*.gi,*.gd set formatprg="par w76p4s0j"
  autocmd BufWritePost,FileWritePost *.g,*.gi,*.gd set formatprg="par w76p0s0j"
augroup END

" " GitHub flavored Markdown
" augroup markdown
"     au!
"     au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
" augroup END

au! BuFRead,BufNewFile *.rs syn keyword rustTodo DEBT FIXME HACK NOTE REVIEW TODO XXX containedin=.*Comment
