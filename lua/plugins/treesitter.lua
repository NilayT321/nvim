return {
    -- Treesitter 
    {
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	build = ':TSUpdate',
	opts = {
	  install_dir = vim.fn.stdpath('data') .. '/site'
	},

	init = function() 
	    require('nvim-treesitter').install({'html', 'rust', 'c', 'haskell', 'latex', 'css'})
	end
    },

    -- Nvim-ts-autotag 
    {
	'windwp/nvim-ts-autotag', 
	opts = {},
    }
}
