-- Set colorscheme
vim.o.termguicolors = true

-- Display the popup menu for completion
vim.opt.wildoptions = 'pum'

-- Opaque floating window
vim.opt.winblend = 0

vim.opt.background = 'light'

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
