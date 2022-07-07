call plug#begin() " Begin calling plugins

Plug 'https://github.com/vim-airline/vim-airline' " Status Bar
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Color schemes
Plug 'https://github.com/preservim/tagbar' " Function and class layout
Plug 'https://github.com/norcalli/nvim-colorizer.lua' " Colorizer
Plug 'https://github.com/kien/ctrlp.vim' " File Search
Plug 'https://github.com/vim-airline/vim-airline-themes' " Airline themes
Plug 'SirVer/ultisnips' " snippets

call plug#end() " Stop calling plugins

" for colorizer
lua require'colorizer'.setup() 
