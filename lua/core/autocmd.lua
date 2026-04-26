-- PreTeXt .ptx files should be recognized as xml files
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, { pattern = "*.ptx", command = "setlocal filetype=xml" })
