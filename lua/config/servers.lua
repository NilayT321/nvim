-- Python
vim.lsp.enable('pyright')

-- C/C++
vim.lsp.enable('clangd')

-- Latex
vim.lsp.enable('texlab', {
    filetypes = {'tex', 'sty', 'cls'},
})

-- Haskell
vim.lsp.config('hls', {
	filetypes = {'haskell', 'lhaskell', 'cabal'},
})
vim.lsp.enable('hls')

-- Rust
vim.lsp.enable('rust-analyzer')

-- Lemminx for XML/PTX (PreTeXt) files
vim.lsp.config('lemminx', {
  filetypes = { "xml", "xsd", "xsl", "xslt", "ptx" }, -- Add 'ptx' here
  settings = {
    xml = {
      -- Optional: Enable validation if ptx has schemas
      validation = { enable = true },
    }
  }
})
vim.lsp.enable('lemminx')

-- HTML/CSS
vim.lsp.enable('html') 
vim.lsp.enable('cssls')

-- GLSL 
vim.lsp.enable('glsl-analyzer')

-- Lua
vim.lsp.enable('lua-ls')
