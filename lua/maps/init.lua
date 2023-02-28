require("maps.plugins.telescope")
require("maps.plugins.lspsaga")

local keymap = vim.keymap
local utils = require("utils")
local wk = require("which-key")

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
-- Disable yaking with x
keymap.set("n", "x", '"_x')

-- Increment and decrement using + and -
utils.nmap("+", "<C-a>", "[+] Increment")
utils.nmap("-", "<C-x>", "[-] Decrement")

wk.register({
	s = {
		name = "split",
		h = { "<cmd>split<cr><C-w>w", "[S]plit [H]orizontally", silent = true, noremap = true },
		v = { "<cmd>vsplit<CR><C-w>w", "[S]plit [V]ertically", silent = true, noremap = true },
		a = { "gg<S-v>G", "[S]elect [A]ll", silent = true, noremap = true },
	},
})

wk.register({
	t = {
		name = "tabs",
		e = { "<cmd>tabedit<cr>", "[T]ab [E]dit", silent = true, noremap = true },
		n = { "<cmd>tabn<cr>", "[T]ab [N]ext", silent = true, noremap = true },
		p = { "<cmd>tabp<cr>", "[T]ab [P]rev", silent = true, noremap = true },
	},
})

-- Navigate panels
wk.register({
	["<leader>"] = {
		h = { "<C-w>h", "Left Window", silent = true, noremap = true },
		j = { "<C-w>j", "Bottom Window", silent = true, noremap = true },
		k = { "<C-w>k", "Top Window", silent = true, noremap = true },
		l = { "<C-w>l", "Right Window", silent = true, noremap = true },
	},
})

keymap.set("", "<leader><Space>", "<C-w>w")

-- Resize panels
keymap.set("n", "<leader><left>", "<C-w>>")
keymap.set("n", "<leader><right>", "<C-w><")
keymap.set("n", "<leader><up>", "<C-w>+")
keymap.set("n", "<leader><down>", "<C-w>-")
