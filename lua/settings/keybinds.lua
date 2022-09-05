-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- open tabs with other files
map("n", "<C-t>", ":tabnew ")
map("n", "H", "gT")
map("n", "L", "gt")
