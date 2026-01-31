-- Line numbers on 
vim.opt.number = true 
vim.opt.showmode = false

vim.o.shiftwidth = 4

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- Diagnostic messages disappeared for some reason? 
-- Turn them back on 
vim.diagnostic.config({virtual_text = true})
