-- Set leader and localleader key 
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Make j and k move up one screen line by default 
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')

-- Navigate between buffers 
vim.keymap.set('n', '<localleader>bp', '<cmd>bp <cr>')
vim.keymap.set('n', '<localleader>bn', '<cmd>bn <cr>')

-- Toggle the filesystem tree (neotree) 
vim.keymap.set('n', '<localleader>t', '<cmd>Neotree toggle <cr>')

-- Folding 
-- vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
-- vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
