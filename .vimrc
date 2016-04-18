set autoindent
set tabstop=2
set shiftwidth=4
set expandtab
set nobackup
set vb t_bv=
set showmatch
set enc=utf-8

set showcmd

let loaded_matchparen = 1
syntax on

"タブ、空白、改行の可視化
set list
set listchars=tab:>.,trail:_,eol:↲,extends:>,precedes:<,nbsp:%

"全角スペースをハイライト表示
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

"無名レジスタに入るデータを、*レジスタにも入れる。
:set clipboard+=unnamed

"文字コード自動判別
:set encoding=utf-8
:set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8

"改行コードの自動認識
:set fileformats=unix,dos,mac
