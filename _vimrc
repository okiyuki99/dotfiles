"--- Look and Feel ---"
syntax enable
colorscheme slate
set cursorline
set number
set ruler
set showmatch
set title

set matchpairs& matchpairs+=<:> " add pair '<' and '>'

"--- Backspace Delete ---"
set backspace=indent,eol,start

"--- Backup ---"
set nowritebackup
set nobackup
set noswapfile

"--- Search ---"
set hlsearch
set ignorecase
set incsearch
set smartcase

"--- Clipboard ---"
set clipboard=unnamed

"--- auto reload .vimrc ---"
augroup source-vimrc
  autocmd!
  autocmd BufWritePost *vimrc source $MYVIMRC | set foldmethod=marker
  autocmd BufWritePost *gvimrc if has('gui_running') source $MYGVIMRC
augroup END

" --- 全角スペースの表示 ---"
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
  endfunction

  if has('syntax')
    augroup ZenkakuSpace
      autocmd!
      autocmd ColorScheme * call ZenkakuSpace()
      autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
    augroup END
    call ZenkakuSpace()
endif

" --- vundle ---"
set nocompatible " be iMproved, required
filetype off     " required

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'nathanaelkane/vim-indent-guides'

call vundle#end()            " required
filetype plugin indent on    " required

" --- vim-indent-guides ---"
"set tabstop=2
"set shiftwidth=2
"set expandtab
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1
let g:indent_guides_start_level=1 
