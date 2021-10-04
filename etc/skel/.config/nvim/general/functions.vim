" Random Useful Functions

" Turn spellcheck on for markdown files
augroup auto_spellcheck
  autocmd BufNewFile,BufRead *.md setlocal spell
augroup END

augroup exe_code 
  autocmd!
  
  " execute python code
  autocmd FileType python nnoremap <buffer> <leader>E
              \ :sp<CR> :term python3 %<CR> :startinsert<CR>
  
  " execute javascript code
  autocmd FileType javascript nnoremap <buffer> <leader>E
              \ :sp<CR> :term node %<CR> :startinsert<CR>
  
  " execute bash, sh code
  autocmd FileType bash,sh nnoremap <buffer> <leader>E
              \ :sp<CR> :term bash %<CR> :startinsert<CR>
augroup END

nnoremap <f10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>
