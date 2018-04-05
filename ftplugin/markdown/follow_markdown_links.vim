if exists("*FollowLink")
    finish
endif

" --------------------------------
" Add plugin to the path
" --------------------------------
py3 import sys
py3 import vim
py3 sys.path.append(vim.eval('expand("<sfile>:h")'))

function! FollowLink()
py3 << endOfPython

from follow_markdown_links import follow_link
follow_link()

endOfPython
endfunction

command! FollowLink call FollowLink()
nnoremap <script> <CR> :FollowLink<CR>
" nnoremap <script> <BS> :e#<CR>
