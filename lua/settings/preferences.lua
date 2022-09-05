local o = vim.o
local A = vim.api

-- colors + theme
vim.cmd "colorscheme gusher"
o.termguicolors = true
o.background = 'dark'

-- improve ui
o.number = true
o.cursorline = true
o.relativenumber = true

-- better editing
o.expandtab = true
o.smarttab = true
o.wrap = true
o.tabstop = 4
o.expandtab = true
o.shiftwidth = 0
o.undofile = true

-- searches aren't case sensitive unless /C is used
o.ignorecase = true
o.smartcase = true

-- better buffer splitting
o.splitbelow = true
o.splitright = true

