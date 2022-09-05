-- Local variables
local o = vim.o
local A = vim.api

-- Colors and theme
vim.cmd "colorscheme gusher"
o.termguicolors = true
o.background = 'dark'

-- Improve ui
o.number = true
o.cursorline = true
o.relativenumber = true

-- Better editing
o.expandtab = true
o.smarttab = true
o.wrap = true
o.tabstop = 4
o.expandtab = true
o.shiftwidth = 0
o.ttyfast = true
o.undodir = "~/.vimdid"
o.undofile = true

-- Searches aren't case sensitive unless /C is used
o.ignorecase = true
o.smartcase = true

-- Better buffer splitting
o.splitbelow = true
o.splitright = true
