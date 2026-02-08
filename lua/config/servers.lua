-- Python
vim.lsp.enable('pyright')

-- C/C++
vim.lsp.enable('clangd')

-- Latex
vim.lsp.enable('texlab')

-- Haskell
vim.lsp.config('hls', {
	filetypes = {'haskell', 'lhaskell', 'cabal'},
})
vim.lsp.enable('hls')

vim.lsp.enable('rust-analyzer')

vim.lsp.enable('lemminx')

vim.lsp.enable('html') 

vim.lsp.enable('cssls')
