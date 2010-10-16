set guifont=Bitstream\ Vera\ Sans\ Mono\ 12
set nowrap  " Line wrapping off
set cursorline
set hidden " <<This means that the buffer of the old file will only be hidden when you switch to the new file. When you switch back, you still have your undo history. >>

filetype on  " Automatically detect file types.
filetype plugin on

set nocompatible  " We don't want vi compatibility.

let mapleader = ","

" Saves current session when you exit
"au VimLeavePre * if v:this_session != '' | exec "mks! " . v:this_session | endif 

" Add recently accessed projects menu (project plugin)
set viminfo^=!

" Searches word under cursor in the current directory and all subdirectories, opening the quickfix window when done
map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>

set hlsearch
" Pressing F5 will highlight all occurrences of the current word or selection 
set guioptions+=a
function! MakePattern(text)
  let pat = escape(a:text, '\')
  let pat = substitute(pat, '\_s\+$', '\\s\\*', '')
  let pat = substitute(pat, '^\_s\+', '\\s\\*', '')
  let pat = substitute(pat, '\_s\+',  '\\_s\\+', 'g')
  return '\\V' . escape(pat, '\"')
endfunction
vnoremap <silent> <F5> :<C-U>let @/="<C-R>=MakePattern(@*)<CR>"<CR>:set hls<CR>
" Press F8 to toggle highlighting on/off, and show current value.
:noremap <F8> :set hlsearch! hlsearch?<CR>

function! OperateOutsideSelection(cmd)
  let cmd = a:cmd
  execute "0,'<-1 " . cmd  | execute "'>+1, $ " . cmd 
endfunction

let showmarks_include = "abcdefghijklmnopqrstuvwxyz" 
" For marks a-z
highlight ShowMarksHLl gui=bold
" For marks A-Z
highlight ShowMarksHLu gui=bold
" For all other marks
highlight ShowMarksHLo gui=bold
" For multiple marks on the same line.
highlight ShowMarksHLm gui=bold
" let g:showmarks_textlower=">>"


" Minibuffer Explorer Settings
"let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1

" Kill MBE (minibufferexplorer) just before writing .viminfo; it buggers up the session
autocmd VimLeavePre * 
			\ if (bufnr('-MiniBufExplorer-') != -1) |
			\		execute 'bwipe ' . bufnr("-MiniBufExplorer-") |
			\ endif 
" }}}1
au VimLeavePre * NERDTreeClose

" alt+n or alt+p to navigate between entries in QuickFix
"map <silent> <m-p> :cp <cr>
"map <silent> <m-n> :cn <cr>
 


 
syntax enable


set cf  " Enable error files & error jumping.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
set nowrap  " Line wrapping off
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
colorscheme ir_white
 
" Formatting (some of these are for coding in C and C++)
set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
set expandtab
" load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

 
" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
" set list
" Show $ at end of line and trailing space as ~
" set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.

" gvim specific
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes

" Use shift and mouse to select blockwise 
nmap <S-LeftMouse> <LeftMouse><C-V>
vmap <S-LeftDrag> <LeftDrag>
imap <S-LeftMouse> <LeftMouse><C-O><C-V>
vmap <S-LeftMouse> <Esc><LeftMouse><C-V>


map <F10> :NERDTree <CR>
map <F11> :NERDTreeClose <CR>
let NERDTreeShowBookmarks = 1
" Change CWD when opening a bookmark
let NERDTreeChDirMode = 2

map <F2> :FufFile <CR>
map <F3> :BufExplorer <CR>

" bclose.vim closes the buffer without closing the containing window - useful
" for minibufferexplorer and nerdtree (http://vim.wikia.com/wiki/VimTip165)
nnoremap <silent> <Leader>bd :Bclose<CR>

