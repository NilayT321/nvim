-- Line numbers on 
vim.opt.number = true 
vim.opt.showmode = false

-- Tabs and indentation
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true 

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- Diagnostic messages disappeared for some reason? 
-- Turn them back on 
vim.diagnostic.config({virtual_lines = true})
