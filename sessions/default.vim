" ~/.vim/sessions/default.vim: Vim session script.
" Created by session.vim on 10 November 2010 at 11:22:09.
" Open this file in Vim and run :source % to restore your session.

set guioptions=egimrLtTba
set guifont=Bitstream\ Vera\ Sans\ Mono\ 12
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if !exists('g:colors_name') || g:colors_name != 'ir_white' | colorscheme ir_white | endif
call setqflist([{'lnum': 188, 'col': 48, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'app/controllers/guests_controller.rb', 'text': '    @guests = current_user.organization.guests.present_during(@date, @end_date).paginate('}, {'lnum': 204, 'col': 48, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'app/controllers/guests_controller.rb', 'text': '    @guests = current_user.organization.guests.present_during(@date, @end_date).find(:all, :include => :allotments)'}, {'lnum': 28, 'col': 16, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'app/models/guest.rb', 'text': '  named_scope :present_during, lambda { |start_date, end_date|'}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/php/kompas/public_html
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +22 mod/compass/view.php
badd +3 mod/compass/test.php
badd +34 mod/compass/class.compass_autofiller.php
badd +18 mod/compass/forms.yaml
badd +24 mod/compass/helper_methods.php
badd +46 mod/compass/db/install.xml
badd +76 config.php
args ~/rails/smallcamp/[BufExplorer]
set lines=45 columns=164
edit mod/compass/class.compass_autofiller.php
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 34 - ((3 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
34
normal! 0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad

" vim: ft=vim ro nowrap smc=128
