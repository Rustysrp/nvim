" Tabs
nnoremap H gT
nnoremap L gt
nnoremap <C-K> :bd! <CR>
nnoremap <C-t> :tabnew<CR>
              \:e 
nnoremap <C-x> :tabc<CR>
noremap J %

"Run code * <localleader key>
"             currently `[`
" *TODO* make an input file for input
augroup exe_code
    autocmd!
    " execute rust code <no input>
    autocmd FileType rust nnoremap <buffer> <localleader>r
            \ :sp <CR>
            \ :terminal cargo run<CR>

    " run c++ code with input
    autocmd FileType cpp nnoremap <buffer> <localleader>c
            \ :w <CR> :!g++ -std=c++17 -o %< % && ./%< < input.txt<CR>

    " run c++ without input
    autocmd FileType cpp nnoremap <buffer> <localleader>r
            \ :w <CR> :!g++ -std=c++17 -o %< % && ./%< <CR>

    " run python code
    autocmd FileType python nnoremap <buffer> <localleader>r
            \ :! clear; python %<CR>

    autocmd FileType html nnoremap <buffer> <localleader>r
            \ :!google-chrome %<CR>
            
augroup END

