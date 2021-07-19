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
set autoindent smarttab shiftwidth=2 tabstop=2 
set nobackup
set hlsearch ignorecase
set showcmd
set cmdheight=1
set laststatus=2  " Always display the statusline
set scrolloff=3
set tw=80
set expandtab
set mouse=a " Enable your mouse
set shell=zsh
set clipboard+=unnamedplus " Copy paste between vim and everything else
set nowrap "No Wrap lines
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
  
  set background=light
  if &background == "light" 
    lua << EOF
    require('github-theme').setup({
      themeStyle = "light",
      functionStyle = "italic",
      sidebars = {"qf", "vista_kind", "terminal", "packer"},
      colors = {hint = "orange", error = "#ff0000"}
    })
EOF
  else
    colorscheme nightfly
  endif

" tmux conf
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

endif

"}}}


