local utils = require('utils')

utils.nmap('<leader>tg', '<Cmd>Lspsaga term_toggle<CR>', '[T]erm [T]oggle')
utils.nmap('K', '<Cmd>Lspsaga hover_doc<CR>','Hover Doc')
utils.nmap('gd', '<Cmd>Lspsaga lsp_finder<CR>', 'GoTo definition')
utils.nmap('gD', '<Cmd>Lspsaga goto_definition<CR>')
utils.nmap('gp', '<Cmd>Lspsaga preview_definition<CR>')
utils.nmap('gr', '<Cmd>Lspsaga rename<CR>')
utils.nmap('<leader>o', '<cmd>Lspsaga outline<CR>')
