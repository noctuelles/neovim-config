require('plugin_maps.telescope')
require('plugin_maps.lspsaga')

local keymap = vim.keymap
local silent = { silent = true }
local utils = require('utils')

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', silent)
-- Disable yaking with x
keymap.set('n', 'x', '"_x')

-- Increment and decrement using + and -
utils.nmap('+', '<C-a>', '[+] Increment')
utils.nmap('-', '<C-x>', '[-] Decrement')

-- Select all
utils.nmap('sa', 'gg<S-v>G', '[S]elect [A]ll')

-- Split horizontaly and verticaly
utils.nmap('sh', ':split<CR><C-w>w','[S]plit [H]orizontally')
utils.nmap('sv', ':vsplit<CR><C-w>w', '[S]plit [V]ertically')

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
