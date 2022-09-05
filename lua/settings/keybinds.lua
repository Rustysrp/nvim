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

-- Faster saving and quitting
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>q", ":q<CR>")

-- Simpler redo
map("n", "<leader>r", "<C-r>")

-- Nerdtree keybinds
map("n", "<leader>n", ":NERDTreeToggle<CR>")
