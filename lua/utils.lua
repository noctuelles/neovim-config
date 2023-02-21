local keymap = vim.keymap

M = {}

function M.nmap(key, cmd, description)
	keymap.set("n", key, cmd, { desc = description, noremap = true, silent = true })
end

return M
