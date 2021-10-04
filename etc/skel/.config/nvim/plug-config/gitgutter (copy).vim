let g:gitgutter_sign_added              = '+'
let g:gitgutter_sign_modified           = '~'
let g:gitgutter_sign_removed            = '_'
let g:gitgutter_sign_removed_first_line = '‾'
let g:gitgutter_sign_modified_removed   = '~_'

let g:gitgutter_enabled = 1
let g:gitgutter_map_keys = 0

" highlight GitGutterAdd    guifg=#98c379 ctermfg=2
" highlight GitGutterChange guifg=#61afef ctermfg=3
" highlight GitGutterDelete guifg=#e06c75 ctermfg=1

highlight GitGutterAdd    guifg=#009900 ctermfg=Green
highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
highlight GitGutterDelete guifg=#ff2222 ctermfg=Red

nmap ] <Plug>(GitGutterNextHunk)
nmap [ <Plug>(GitGutterPreHunk) 


" function! GitStatus()
  " let [a,m,r] = GitGutterGetHunkSummary()
  " return printf('+%d ~%d -%d', a, m, r)
" endfunction
" set statusline+=%{GitStatus()}

" let g:gitgutter_grep=''

