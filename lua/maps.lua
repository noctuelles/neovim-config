local keymap = vim.keymap
local silent = { silent = true }
local noremap_silent = { noremap = true, silent = true }

-- Space as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', silent)
-- Disable yaking with x
keymap.set('n', 'x', '"_x')

-- Increment and decrement using + and -
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Split horizontaly and verticaly
keymap.set('n', 'sh', ':split<CR><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<CR><C-w>w', { silent = true })

-- Create tab and navigate
keymap.set('n', 'te', ':tabedit<CR>', { silent = true })
keymap.set('n', 'tn', ':tabn<CR>', { silent = true })
keymap.set('n', 'tp', ':tabp<CR>', { silent = true })

-- Navigate panels
keymap.set('', '<leader><Space>', '<C-w>w')
keymap.set('', '<leader>h', '<C-w>h')
keymap.set('', '<leader>j', '<C-w>j')
keymap.set('', '<leader>k', '<C-w>k')
keymap.set('', '<leader>l', '<C-w>l')

-- Resize panels
keymap.set('n', '<leader><left>', '<C-w>>')
keymap.set('n', '<leader><right>', '<C-w><')
keymap.set('n', '<leader><up>', '<C-w>+')
keymap.set('n', '<leader><down>', '<C-w>-')

-- LSP saga

keymap.set('n', '<leader>tg', '<Cmd>Lspsaga term_toggle<CR>', noremap_silent)
keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', noremap_silent)
keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', noremap_silent)
keymap.set('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', noremap_silent)
keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', noremap_silent)
