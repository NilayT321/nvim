-- Set leader key 
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Navigate between buffers 
vim.keymap.set('n', '<localleader>bp', '<cmd>bp <cr>')
vim.keymap.set('n', '<localleader>bn', '<cmd>bn <cr>')

-- Toggle the filesystem tree (neotree) 
vim.keymap.set('n', '<localleader>t', '<cmd>Neotree toggle <cr>')
