-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
-- Set leader keys to space
vim.g.mapleader = ' '

-- Open tabs with other files
map("n", "<C-t>", ":tabnew ")

-- Close tabs
map("n", "<C-x>", ":tabc<CR>")

-- Switch tabs
map("n", "H", "gT")
map("n", "L", "gt")

-- Go to top of file 
map("n", "<leader>g", "gg")

-- Faster saving and quitting
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>q", ":q<CR>")

-- Simpler redo
map("n", "<leader>r", "<C-r>")

-- Nerdtree keybinds
map("n", "<leader>n", ":NERDTreeToggle<CR>")

-- Insert mode arrow keybinds
map("i", "<C-l>", "<right>")
map("i", "<C-h>", "<left>")
map("i", "<C-j>", "<down>")
map("i", "<C-k>", "<up>")

-- Delete line
map("i", "<C-q>", "<ESC>ddi")

-- Insert line (mimic normal 'o')
map("i", "<C-o>", "<down><ESC>0i<C-j><up>")
