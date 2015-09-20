" 一旦ファイルタイプ関連を無効化する
filetype off
" NeoBundle
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle/'))
endif
" original repos on github
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'vim-jp/vim-go-extra'
call neobundle#end()

" color
syntax on
" 行番号を表示
set number
" 横線の表示
set cursorline
" 改行時などに、自動でインデントを設定してくれる
set smartindent
" 空白文字の可視化
set list
" バックスペースを、空白、行末、行頭でも使えるようにする
set backspace=indent,eol,start
" カーソルの回り込みができるようになる
set whichwrap=b,s,[,],<,>
" スワップファイルは使わない(ときどき面倒な警告が出るだけで役に立ったことがない)
set noswapfile
" for go
"NeoBundle 'vim-jp/vim-go-extra'
" http://inari.hatenablog.com/entry/2014/05/05/231307
" 全角スペースの表示
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
" 自動的に閉じ括弧を入力
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
" filetypeの自動検出(最後の方に書いた方がいいらしい)
filetype plugin indent on
