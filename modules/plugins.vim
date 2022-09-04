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
Plug 'scrooloose/nerdtree' " nerdtree

call plug#end() " stop calling plugins

" plugin config

" ultisnips config
let g:UltiSnipsSnippetDirectories=["snippet"] " set the directories to be checked for snipptes

