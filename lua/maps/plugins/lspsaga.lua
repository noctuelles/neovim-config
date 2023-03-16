local caca = require("which-key")

caca.register({
	t = {
		name = "term",
		g = { "<Cmd>Lspsaga term_toggle<CR>", "[T]erm [T]oggle", silent = true, noremap = true },
	},
	m = {
		name = "lsp",
		g = {
			name = "goto",
			d = { "<Cmd>Lspsaga goto_definition<CR>", "[G]oto [D]efinition", silent = true, noremap = true },
			p = {
				name = "peek",
				d = {
					"<Cmd>Lspsaga peek_definition<CR>",
					"[G]oto [P]eek [D]efinition",
					silent = true,
					noremap = true,
				},
			},
		},
		s = {
			name = "show",
			l = { "<cmd>Lspsaga show_line_diagnostics<CR>", "[S]how [L]ine Diagnostics", silent = true, noremap = true },
			c = {
				"<cmd>Lspsaga show_cursor_diagnostics<CR>",
				"[S]how [C]ursor Diagnostics",
				silent = true,
				noremap = true,
			},
			b = {
				"<cmd>Lspsaga show_buf_diagnostics<CR>",
				"[S]how [B]uffer Diagnostics",
				silent = true,
				noremap = true,
			},
		},
		c = {
			name = "call",
			i = { "<cmd>Lspsaga incoming_calls<CR>", "[I]ncoming [C]alls", silent = true, noremap = true },
			o = { "<cmd>Lspsaga outgoing_calls<CR>", "[I]outgoing [C]alls", silent = true, noremap = true },
		},
		f = { "<Cmd>Lspsaga lsp_finder<CR>", "[F]inder", silent = true, noremap = true },
		o = { "<Cmd>Lspsaga outline<CR>", "[O]utline", silent = true, noremap = true },
		r = { "<Cmd>Lspsaga rename<CR>", "[R]ename", silent = true, noremap = true },
		rp = { "<Cmd>Lspsaga rename ++project<CR>", "[R]ename [P]roject", silent = true, noremap = true },
	},
	K = { "<Cmd>Lspsaga hover_doc ++quiet<CR>", "Hover Doc", silent = true, noremap = true },
})
