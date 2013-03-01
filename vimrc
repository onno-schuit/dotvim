set background=light
set guifont=Bitstream\ Vera\ Sans\ Mono\ 12
set guioptions-=T  "remove toolbar
set nowrap  " Line wrapping off
set cursorline
set hidden " <<This means that the buffer of the old file will only be hidden when you switch to the new file. When you switch back, you still have your undo history. >>

filetype on  " Automatically detect file types.
filetype plugin on

set nocompatible  " We don't want vi compatibility.

let mapleader = ","
let maplocalleader = ","

" Saves current session when you exit
"au VimLeavePre * if v:this_session != '' | exec "mks! " . v:this_session | endif 

" Add recently accessed projects menu (project plugin)
set viminfo^=!

" Searches word under cursor in the current directory and all subdirectories, opening the quickfix window when done
map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>

" Filepath of current buffer is copied to system clipboard (register +)
noremap <silent> <F6> :let @+=expand("%:p")<CR>


" Show horizontal scrollbar at startup
set guioptions+=b

set hlsearch
set guioptions+=a


function! MakePattern(text)
  let pat = escape(a:text, '\')
  let pat = substitute(pat, '\_s\+$', '\\s\\*', '')
  let pat = substitute(pat, '^\_s\+', '\\s\\*', '')
  let pat = substitute(pat, '\_s\+',  '\\_s\\+', 'g')
  return '\\V' . escape(pat, '\"')
endfunction

"" Pressing F5 will highlight all occurrences of the current word or selection 
" vnoremap <silent> <F5> :<C-U>let @/="<C-R>=MakePattern(@*)<CR>"<CR>:set hls<CR>

" When F5 is pressed, a numbered list of file names is printed, and the user needs 
" to type a single number based on the 'menu' and press enter.
:nnoremap <F5> :buffers<CR>:buffer<Space>


" Press F8 to toggle highlighting on/off, and show current value.
:noremap <F8> :set hlsearch! hlsearch?<CR>

" Press S to replace the current word with the last yanked text (use cc
" instead of S to replace the current line)
nnoremap S diw"0P
" Replace the visually selected text with the last yanked text
vnoremap S "_d"0P

" Accidentally using :W instead of :w
cab W w

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

nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>


"" Minibuffer Explorer Settings
""let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
""let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1 "force miniBufExpl to try to place selected buffers into a window
""                                  that does not have a nonmodifiable buffer

" Kill MBE (minibufferexplorer) just before writing .viminfo; it buggers up the session
"autocmd VimLeavePre * 
"			\ if (bufnr('-MiniBufExplorer-') != -1) |
"			\		execute 'bwipe ' . bufnr("-MiniBufExplorer-") |
"			\ endif 
" }}}1

"au VimLeavePre * NERDTreeClose

" alt+n or alt+p to navigate between entries in QuickFix
"map <silent> <m-p> :cp <cr>
"map <silent> <m-n> :cn <cr>
 


 
syntax enable

runtime macros/matchit.vim


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

" Clean up (reformat) html or xml 
map <F3> :%!tidy -i -q -w 0 -xml -utf8 <CR>

" bclose.vim closes the buffer without closing the containing window - useful
" for minibufferexplorer and nerdtree (http://vim.wikia.com/wiki/VimTip165)
nnoremap <silent> <Leader>bd :Bclose<CR>


" Syntastic Settings
"SyntasticEnable php
"SyntasticEnable javascript
"SyntasticEnable ruby

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
"Following setting suppresses not only php warnings, but errors as well!
"let g:syntastic_quiet_warnings=1


map <C-PageDown> :bn<CR>
map <C-PageUp> :bp<CR>

set statusline=%#warningmsg#%{SyntasticStatuslineFlag()}%*\ row:%l,col:%v\ \-\ %f
au BufEnter -MiniBufExplorer- setlocal statusline=\ 

" This adds :G <pattern> command to run the command from within Vim.
func GitGrep(...)
  let save = &grepprg
  set grepprg=git\ grep\ -n\ $*
  let s = 'grep'
  for i in a:000
    let s = s . ' ' . i
  endfor
  exe s
  let &grepprg = save
endfun
command -nargs=? G call GitGrep(<f-args>)

" Press Ctrl-X twice to run git grep on the word under the cursor
func GitGrepWord()
  normal! "zyiw
  call GitGrep('-w -e ', getreg('z'))
endf
nmap <C-x><C-x> :call GitGrepWord()<CR>


" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬


" Settings for the VimClojure plugin
let vimclojure#FuzzyIndent=1
let vimclojure#HighlightBuiltins=1
let vimclojure#HighlightContrib=1
let vimclojure#DynamicHighlighting=1
let vimclojure#WantNailgun=1
let vimclojure#NailgunClient = $HOME . "/.vim/lib/vimclojure-nailgun-client/ng"
let vimclojure#ParenRainbow=1


" Don't let the phpfolding plugin automatically fold everything
let g:DisableAutoPHPFolding = 1

au BufRead,BufNewFile *.html set filetype=php

let g:CommandTMaxFiles=20000

" Copy matches of the last search to a register (default is the clipboard).
" Accepts a range (default is whole file).
" 'CopyMatches'   copy matches to clipboard (each match has \n added).
" 'CopyMatches x' copy matches to register x (clears register first).
" 'CopyMatches X' append matches to register x.
" We skip empty hits to ensure patterns using '\ze' don't loop forever.
command! -range=% -register CopyMatches call s:CopyMatches(<line1>, <line2>, '<reg>')
function! s:CopyMatches(line1, line2, reg)
  let hits = []
  for line in range(a:line1, a:line2)
    let txt = getline(line)
    let idx = match(txt, @/)
    while idx >= 0
      let end = matchend(txt, @/, idx)
      if end > idx
	call add(hits, strpart(txt, idx, end-idx))
      else
	let end += 1
      endif
      if @/[0] == '^'
        break  " to avoid false hits
      endif
      let idx = match(txt, @/, end)
    endwhile
  endfor
  if len(hits) > 0
    let reg = empty(a:reg) ? '+' : a:reg
    execute 'let @'.reg.' = join(hits, "\n") . "\n"'
  else
    echo 'No hits'
  endif
endfunction
