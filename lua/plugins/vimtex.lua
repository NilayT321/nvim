return {
    {
        "lervag/vimtex",
        lazy = false,     -- we don't want to lazy load VimTeX
        -- tag = "v2.15", -- uncomment to pin to a specific release
        init = function()
            -- Zathura is the default viewer. 
            vim.g.vimtex_view_method = "zathura"
            vim.g.tex_flavor = 'latex' 
            vim.g.vimtex_view_enabled = 1 

            vim.g.Tex_IgnoreLevel = 9
            vim.g.vimtex_quickfix_open_on_warning = 0 
            vim.g.tex_conceal = 'abdmg'

            -- Compiler options
            vim.g.vimtex_compiler_latexmk = {
            options = {
                '-lualatex',
                '-verbose',
                '-file-line-error',
                '-synctex=1',
                '-interaction=nonstopmode',
                '-shell-escape',
            },
            }

            -- Compiler warnings hidden 
            vim.g.vimtex_log_ignore_warnings = {
                'Underfull',
                'Overfull',
                'specifier changed to',
                'You have requested',
                'Missing number, treated as zero',
                'There were undefined references',
                'Citation %.%# undefined',
                'Double space found.,'
            }
        end

    }, 
}
