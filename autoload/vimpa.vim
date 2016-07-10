let s:save_cpo = &cpo
set cpo&vim

function! vimpa#open() abort
  let n = bufnr("^vimpa$")
  if n != -1
    buffer vimpa
    return
  endif
  silent edit vimpa
  call s:buf_setup()
  call s:load_patches()
endfunction

function! s:buf_setup() abort
  setlocal buftype=nofile
  setlocal bufhidden=hide
  setlocal filetype=help
  setlocal noswapfile nowrap
endfunction

function! s:load_patches() abort
  let url = 'http://vim-jp.herokuapp.com/patches/json?'
  call setline(1, repeat('-', 78))
  for di in json_decode(system('curl -Ss ' . url))
    call append('$', di.title . "  --  " . di.link)
    call append('$', repeat(' ', 75 - len(di.created)) . di.created)
    call append('$', split(di.description, "\n"))
    call append('$', '')
    call append('$', repeat('-', 78))
  endfor
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
