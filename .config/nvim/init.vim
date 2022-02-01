" Fundamentals "{{{
" ---------------------------------------------------------------------

" init autocmd
autocmd!

set nocompatible
syntax enable
filetype plugin indent on
set number
set fileencodings=utf-8
set encoding=utf-8
set title
set autoindent smartindent smarttab shiftwidth=2 tabstop=2 
set nobackup
set hidden
set hlsearch ignorecase
set showcmd
set cmdheight=1
set laststatus=2  " Always display the statusline
set scrolloff=3
set tw=160
set expandtab
set mouse=a " Enable your mouse
set shell=zsh
set clipboard+=unnamedplus " Copy paste between vim and everything else
" set nowrap "No Wrap lines
set backspace=start,eol,indent
set wildignore+=*/node_modules/*

set undodir=~/.config/nvim/undodir
set undofile
set undolevels=10000
set undoreload

"}}}


" File types "{{{
" ---------------------------------------------------------------------
" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
" Blade
au BufNewFile,BufRead *.blade.php set filetype=blade

set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

"}}}

" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim

runtime ./maps.vim
"}}}

" Syntax theme "{{{
" ---------------------------------------------------------------------

" true color
if exists("&termguicolors")
  set termguicolors
  
  " set background=light
  if &background == "light" 
    let g:tokyonight_style = "day"
  else
    let g:tokyonight_style = "night"
  endif
  
  let g:tokyonight_italic_functions = 1

  " Change the "hint" color to the "orange" color, and make the "error" color bright red
  let g:tokyonight_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
  \ }
  colorscheme tokyonight

" tmux conf
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

endif

"}}}


