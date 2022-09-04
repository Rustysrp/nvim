local function map(mode, key, action)
	vim.keymap.set(mode, key, action, { silent = true })
end
