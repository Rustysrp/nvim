-- Local variables
local o = vim.o
local A = vim.api

-- Vimtex config

-- Colors and theme
vim.cmd "colorscheme gotham"
o.background = 'dark'

-- Improve ui
o.number = true
o.cursorline = false
o.relativenumber = true

-- Better editing
o.expandtab = true
o.smarttab = true
o.wrap = true
o.tabstop = 4
o.expandtab = true
o.shiftwidth = 0
o.ttyfast = true

-- Searches aren't case sensitive unless /C is used
o.ignorecase = true
o.smartcase = true

-- Better buffer splitting
o.splitbelow = true
o.splitright = true
