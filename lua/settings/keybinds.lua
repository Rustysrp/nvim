-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- set leader keys to space
vim.g.mapleader = ' '

-- open tabs with other files
map("n", "<C-t>", ":tabnew ")

-- switch tabs
map("n", "H", "gT")
map("n", "L", "gt")

-- nerdtree keybinds
map("n", "<leader>n", ":NERDTreeToggle<CR>")
