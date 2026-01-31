
return {
    'hrsh7th/nvim-cmp', 
    event = 'InsertEnter', 
    dependencies = {
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
	'saadparwaiz1/cmp_luasnip',
    },

    config = function() 
	local cmp = require('cmp')
	local luasnip = require('luasnip')
	cmp.setup({
	    snippet = {
	      expand = function(args)
		luasnip.lsp_expand(args.body) -- For `luasnip` users.
	      end,
	    },

	    window = {
	      completion = cmp.config.window.bordered(),
	      documentation = cmp.config.window.bordered(),
	    },
	    
	    sources = cmp.config.sources({
		{name = 'nvim_lsp'},
		{name = 'luasnip'},
		{name = 'buffer'},
	    }),

	    mapping = cmp.mapping.preset.insert({
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({select = false}),
		['<Tab>'] = cmp.mapping(function(fallback)
		    if cmp.visible() then
				    cmp.select_next_item(select_opts)
		    else
				    fallback()
		    end
		end, {'i', 's'}),
		
		['<S-Tab>'] = cmp.mapping(function(fallback)
		    if cmp.visible() then
				    cmp.select_prev_item(select_opts)
		    else
				    fallback()
		    end
		end, {'i', 's'}),

		['<C-k>'] = cmp.mapping(function(fallback)
		    if cmp.visible() then
				    cmp.scroll_docs(4)
		    else
				    fallback()
		    end
		end, {'i', 's'}),

		['<C-b>'] = cmp.mapping(function(fallback)
		    if cmp.visible() then
				    cmp.scroll_docs(-4)
		    else
				    fallback()
		    end
		end, {'i', 's'}),
	    }),

	    formatting = {
		fields = {'menu', 'abbr', 'kind'},
		format = function(entry, item) 
		    local menu_icon = {
			nvim_lsp = '[LSP]',
			luasnip = '[SNIP]',
			buffer = '[BUF]'
		    }
		    item.menu = menu_icon[entry.source.name]
		    return item
		end
	    },
	})	
    end 
}
