syntax on
colorscheme desert
set t_Co=256
set shiftwidth=4
set cc=0
set foldmethod=manual
set nu
set sw=4
set ts=4
set sts=4
set et
set ci
set si
set cc=100
set backspace=indent,eol,start
set hlsearch
set viminfo='1000,<500,s100,h
set ambiwidth=double
set ruler
set showcmd
set showmode
set ignorecase
set smartcase
set title
set titlestring=%f
set titleold=
set tags=tags;
set laststatus=2
set t_Co=256
set background=dark
let g:solarized_termtrans = 1
let g:solarized_termcolors = 16
let g:solarized_contrast = "high"
let g:solarized_diffmode = "high"
colorscheme solarized
set noshowmode
let g:airline_theme = "solarized"
set autoread
set ttimeoutlen=50
set updatetime=250
set cursorline
set foldmethod=indent
setlocal foldlevel=1
set foldlevelstart=99
set nomodeline
set wildmenu
set wildmode=longest:full,full
set hidden
set scrolloff=3

" normal map
noremap <C-x> :join<CR>
nnoremap J 7j
nnoremap K 7k
vnoremap J 7j
vnoremap K 7k
nnoremap <F2> :set number! number? \| GitGutterToggle<CR>
nnoremap <F6> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>

" cursor
nnoremap ~ ^

" cp & paste
nnoremap <C-c> y$

" view
nnoremap <C-a> :vsp 
inoremap <C-a> <ESC>:vsp 
nnoremap + <C-W>>
nnoremap _ <C-W><

" replace
nnoremap <C-H> :%s/

" search
nnoremap <silent><F3> :noh<CR>

" delete$
nnoremap <silent><C-d> d$
nnoremap <silent><C-f> d^

" terminal
nnoremap <silent><F4> :terminal<CR>
inoremap <silent><F4> <ESC>:terminal<CR>

highlight CursorLine cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE
