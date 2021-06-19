" remove line numbers from terminals (REPLs)
au TermOpen * setlocal listchars= nonumber norelativenumber
" close terminal buffer without showing the exit status of the shell
au TermClose * call feedkeys("\<cr>")

" in ther terminal map escape to changing from terminal mode (insert mode) to
" normal terminal mode <C-\><C-n> then change window, hopefully back to where
" we were editing.
tnoremap <Esc>          <C-\><C-n><C-w>w
nmap <localleader><CR>  <Plug>(iron-send-line)j
vmap <localleader><CR>  <Plug>(iron-visual-send)
nmap <localleader>r     <Plug>(iron-repeat-cmd)
nmap <localleader>i     <plug>(iron-interrupt)
nmap <localleader>q     <Plug>(iron-exit)
nmap <localleader>c     <Plug>(iron-clear)
nmap <localleader><tab> :IronFocus<CR>A
vmap <localleader><tab> y:IronFocus<CR>pA

" Default behaviour for adding a newline to the console:
" nmap c<CR> <Plug>(iron-cr)
" other defaults on
" https://github.com/hkupty/iron.nvim/blob/master/doc/iron.txt



