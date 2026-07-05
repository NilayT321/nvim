return {
    'neovim/nvim-lspconfig',
        dependencies = {
        { 'mason-org/mason.nvim', opts = {} },
        'WhoIsSethDaniel/mason-tool-installer.nvim',

        -- Useful status updates for LSP.
        { 'j-hui/fidget.nvim', opts = {} },
    }
}
