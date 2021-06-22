
cnoreabbrev Gs Git status -uno
cnoreabbrev Gp Git push
cnoreabbrev Gl Git pull
cnoreabbrev Ga Git add %
cnoreabbrev Gc Git commit -m

" substitute motion with clipboard content with https://github.com/svermeulen/vim-subversive
nmap s <plug>(SubversiveSubstitute)
nmap ss <plug>(SubversiveSubstituteLine)
nmap S <plug>(SubversiveSubstituteToEndOfLine)

" iron REPL
" in ther terminal map escape to changing from terminal mode (insert mode) to
" normal terminal mode <C-\><C-n> then change window, hopefully back to where
" we were editing.
tnoremap <Esc>          <C-\><C-n><C-w>w
" TODO make a function where if the python line starts with def then send
" V]M<Plug>(iron-visual-send)`>. Julia it should instead look for function
" anywhere in the line and call V][<Plug>(iron-visual-send)`>
nmap <localleader><CR>  <Plug>(iron-send-line)j
" After sending to visual the cursor jumps to the start of the selection. 
" `> means go to mark named > which will be at the end of the previous
" selection.
vmap <localleader><CR>  <Plug>(iron-visual-send)`>
nmap <localleader>r     <Plug>(iron-repeat-cmd)
nmap <localleader>i     <plug>(iron-interrupt)
" Exit -> focus -> terminal mode -> newline to close window pane.
nmap <localleader>q     <Plug>(iron-exit):IronFocus<CR>A<CR>
nmap <localleader>c     <Plug>(iron-clear)
nmap <localleader><tab> :IronFocus<CR>A
vmap <localleader><tab> y:IronFocus<CR>pA

" Default behaviour for adding a newline to the console:
" nmap c<CR> <Plug>(iron-cr)
" other defaults on
" https://github.com/hkupty/iron.nvim/blob/master/doc/iron.txt


