call plug#begin() " start calling plugins

" special plug for wilder
if has('nvim')
    function! UpdateRemotePlugins(...)
        " needed to refresh runtime files
        let &rtp=&rtp
        UpdateRemotePlugins
    endfunction
    Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') } " command auto-completion
else
    Plug 'gelguy/wilder.nvim' " command auto-completion

    " use python remote plugin features
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif
" basic plug
Plug 'vim-airline/vim-airline' " status Bar
Plug 'rafi/awesome-vim-colorschemes' " color schemes
Plug 'preservim/tagbar' " function and class layout
Plug 'norcalli/nvim-colorizer.lua' " colorizer
Plug 'kien/ctrlp.vim' " file Search
Plug 'vim-airline/vim-airline-themes' " airline themes
Plug 'SirVer/ultisnips' " snippets
Plug 'Rustysrp/vim-gusher' " theme

call plug#end() " stop calling plugins

" plugin config

" ultisnips config
let g:UltiSnipsSnippetDirectories=["snippet"] " set the directories to be checked for snipptes

" enable colorizer
lua require'colorizer'.setup() 

" wilder
" popup menu for autocompletion
call wilder#set_option('renderer', wilder#popupmenu_renderer({
    \ 'highlighter': wilder#basic_highlighter(),
    \ 'pumblend': 10,
    \ }))

" add border to wilder popup menu | border can be single, double, rounded, or solid
" h: wilder#popupmenu_border_theme() for more details
call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_border_theme({
    \ 'highlights': {
    \   'border': 'Normal',
    \ },
    \ 'border': 'rounded',
    \ })))

" setup pipeline for file autocompletion
call wilder#set_option('pipeline', [
    \   wilder#branch(
    \       wilder#cmdline_pipeline({
    \           'language': 'vim',
    \           'fuzzy': 1,
    \           'fuzzy_filter': wilder#vim_fuzzy_filter(),
    \       }),
    \   ),
    \ ])
