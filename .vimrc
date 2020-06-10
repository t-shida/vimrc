set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set nobackup
set vb t_bv=
set showmatch
set enc=utf-8
set noswapfile
set hlsearch
set showcmd

let loaded_matchparen = 1
syntax on

" タブ、空白、改行の可視化
set list
set listchars=tab:>.,trail:_,eol:↲,extends:>,precedes:<,nbsp:%

" 全角スペースをハイライト表示
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction

if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    autocmd ColorScheme       * call ZenkakuSpace()
    autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
  augroup END
  call ZenkakuSpace()
endif

" 無名レジスタに入るデータを、*レジスタにも入れる。
:set clipboard+=unnamed

"文字コード設定
set encoding=utf-8
"set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis,windows-31j,cp932
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis,cp932

" 改行コードの自動認識
:set fileformats=unix,dos,mac

" 不可視文字の表示
set list

" エディタウィンドウの末尾から2行目にステータスラインを常時表示させる
set laststatus=2

" カーソルが何行目の何列目に置かれているかを表示する
set ruler

" ステータス行に表示させる情報の指定
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

" タブバーを常に表示する
set showtabline=2

" start neobundle
" $ mkdir -p .vim/bundle
" $ git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
" :NeoBundleInstall
if 0 | endif
if has('vim_starting')
  if &compatible
  ¦ set nocompatible
  endif
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/unite-outline'

NeoBundle 'Yggdroot/indentLine'
call neobundle#end()
" indentLine
filetype plugin indent on
let g:indentLine_color_term = 233
let g:indentLine_char = '¦'
" end neobundle
