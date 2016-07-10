if exists('g:loaded_vimpa')
  finish
endif

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=0 Vimpa call vimpa#open()

let g:loaded_vimpa = 1

let &cpo = s:save_cpo
unlet s:save_cpo

