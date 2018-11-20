"--- Look and Feel ---"
syntax enable
set cursorline
set number
set ruler
set showmatch
set title

set matchpairs& matchpairs+=<:> " add pair '<' and '>'

"--- Backup ---"
set nowritebackup
set nobackup
set noswapfile

"--- Search ---"
set hlsearch
set ignorecase
set incsearch
set smartcase

"--- auto reload .vimrc ---"
augroup source-vimrc
  autocmd!
  autocmd BufWritePost *vimrc source $MYVIMRC | set foldmethod=marker
  autocmd BufWritePost *gvimrc if has('gui_running') source $MYGVIMRC
augroup END
