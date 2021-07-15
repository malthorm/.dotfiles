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
set background=light
set nobackup
set hlsearch ignorecase
set showcmd
set cmdheight=1
set laststatus=2  " Always display the statusline
set scrolloff=3
set tw=70
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

" Highlights "{{{
" ---------------------------------------------------------------------
"set cursorline  " Enable highlighting of the current line
""set cursorcolumn

"" Set cursor line color on visual mode
"highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

"highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

"augroup BgHighlight
"  autocmd!
"  autocmd WinEnter * set cul
"  autocmd WinLeave * set nocul
"augroup END

"if &term =~ "screen"
"  autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
"  autocmd VimLeave * silent!  exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
"endif

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
if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif

runtime ./maps.vim
"}}}

" Syntax theme "{{{
" ---------------------------------------------------------------------

" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=light
  runtime ./colors/gruvbox.vim
  " Use NeoSolarized
  " let g:neosolarized_termtrans=1
  " runtime ./colors/NeoSolarized.vim
  " colorscheme NeoSolarized
endif

"}}}


