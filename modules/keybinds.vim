" Tabs
nnoremap H gT
nnoremap L gt
nnoremap <C-K> :bd! <CR>
nnoremap <C-t> :tabnew<CR>
              \:e 
nnoremap <C-x> :tabc<CR>

"Run code * <localleader key>
"             currently `[`
augroup exe_code
    autocmd!
    " execute rust code <no input>
    autocmd FileType rust nnoremap <buffer> <localleader>r
            \ :sp <CR>
            \ :terminal cargo run<CR>

    " build C++ code
    autocmd FileType cpp nnoremap <buffer> <localleader>c
            \ :!g++ -o %:r.out % -std=c++14<Enter>
            \ :!g++ -Wall %<CR>

    " run C++ code
    autocmd FileType cpp nnoremap <buffer> <localleader>r
            \ :!./%:r.out<CR>

    " run python code
    autocmd FileType python nnoremap <buffer> <localleader>r
            \ :! clear; python %<CR>
augroup END

