require('mapping.telescope')
require('mapping.lspsaga')

local keymap = vim.keymap
local silent = { silent = true }

function Nmap(key, cmd, description)
  keymap.set('n', key, cmd, { desc = description, noremap = true, silent = true })
end

-- Space as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', silent)
-- Disable yaking with x
keymap.set('n', 'x', '"_x')

-- Increment and decrement using + and -
Nmap('+', '<C-a>', '[+] Increment')
Nmap('-', '<C-x>', '[-] Decrement')

-- Select all
Nmap('sa', 'gg<S-v>G', '[S]elect [A]ll')

-- Split horizontaly and verticaly
Nmap('sh', ':split<CR><C-w>w','[S]plit [H]orizontally')
Nmap('sv', ':vsplit<CR><C-w>w', '[S]plit [V]ertically')

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
