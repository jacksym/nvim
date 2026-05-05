"Jack Symonds ~/.vimrc

set shortmess=IfilnxtToO

"my configs
syntax enable
set nocompatible
set number
set incsearch
set ruler
set linebreak
"set autoindent
set smartindent
set tabstop=4 softtabstop=4
set shiftwidth=4
set noexpandtab
set noswapfile
set smartcase
set fillchars+=vert:\ 
set scrolloff=3
set wildmenu
"set colorcolumn=80

if has("win32") || has("win64")
	noremap <leader>i :e ~/vimfiles/<CR>
elseif has("mac")
	noremap <leader>i :e ~/.vim/<CR>
elseif has("unix")
	noremap <leader>i :e ~/.vim/<CR>
endif

vnoremap <C-c> "+y
inoremap <C-v> <Esc>"+Pa
inoremap <M-Backspace> <C-w>

"more
let mapleader="\<Space>"
noremap <leader>d :E<CR>
noremap <leader>f :e<Space>
cnoremap <M-Backspace> <C-W>
nnoremap <leader><leader> :b<Space>
" noremap <leader>n :vsp<CR>:enew<CR>

let g:netrw_banner = 0
let g:netrw_liststyle = 1
let g:netrw_altv = 1
let g:netrw_sort_options = "i"
let g:netrw_sort_direction = "normal"
let g:netrw_sort_by = 'exten'
"let g:netrw_sort_sequence = '[\/]$,\.c$,\.h$,\.txt$,*'

"windows
set splitbelow
set splitright
nnoremap <leader>wv <C-w>v<C-w>h
nnoremap <leader>ws <C-w>s<C-w>k
nnoremap <leader>wo <C-w>o
nnoremap <leader>wc <C-w>c
nnoremap <leader>wh <C-w>h
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wl <C-w>l
nnoremap <M-H> :tabprev<CR>
nnoremap <M-L> :tabnext<CR>


nnoremap <leader>wH <C-w>H
nnoremap <leader>wJ <C-w>J
nnoremap <leader>wK <C-w>K
nnoremap <leader>wL <C-w>L

nnoremap <leader>gl :vimgrep /<C-R><C-W>/gj **/*<CR>:copen<CR>
vnoremap <leader>gl y:execute 'vimgrep /' . escape(@", '/\') . '/gj **/*'<CR>:copen<CR>
nnoremap gn :cnext<CR>
nnoremap gp :cprev<CR>

function! VimgrepPrompt() abort
  call inputsave()
  let l:pat = input('Search: ')
  call inputrestore()

  if empty(l:pat)
    echo 'Cancelled'
    return
  endif

  call setqflist([], 'r')
  execute 'vimgrep /\V' . escape(l:pat, '\/') . '/gj **/*'
  copen
endfunction

nnoremap <leader>gg :call VimgrepPrompt()<CR>

