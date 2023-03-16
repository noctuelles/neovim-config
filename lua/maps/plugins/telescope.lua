local builtin = require("telescope.builtin")
local theme = require("telescope.themes")
local wk = require("which-key")

wk.register({
	["<leader>"] = {
		f = {
			name = "file",
			b = { "<cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>", "[F]ile [B]rowser" },
		},
		s = {
			name = "search",
			["?"] = { builtin.oldfiles, "[?] Find recently opened files", silent = true, noremap = true },
			["<space>"] = { builtin.buffers, "[ ] Find existing buffers", silent = true, noremap = true },
			["/"] = {
				function()
					builtin.current_buffer_fuzzy_find(theme.get_dropdown({
						winblend = 0,
						previewer = false,
					}))
				end,
				"[/] Fuzzily search in current buffer",
				silent = true,
				noremap = true,
			},
			f = { builtin.find_files, "[S]earch [F]iles", silent = true, noremap = true },
			h = { builtin.help_tags, "[S]earch [H]elp", silent = true, noremap = true },
			b = { builtin.grep_string, "[S]earch current [W]ord", silent = true, noremap = true },
			g = { builtin.live_grep, "[S]earch by [G]rep", silent = true, noremap = true },
			gf = { builtin.git_files, "[S]earch [G]it [F]iles", silent = true, noremap = true },
			d = { builtin.diagnostics, "[S]earch [D]iagnostics", silent = true, noremap = true },
			k = { builtin.keymaps, "[S]earch [K]eymaps", silent = true, noremap = true },
			m = { builtin.man_pages, "[S]earch [M]an", silent = true, noremap = true },
		},
	},
})
