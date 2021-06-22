" remove line numbers from terminals (REPLs)
au TermOpen * setlocal listchars= nonumber norelativenumber
" close terminal buffer without showing the exit status of the shell
au TermClose * call feedkeys("\<cr>")

