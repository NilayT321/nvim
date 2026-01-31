return {
    -- nvim-html-css 
    {
      "Jezda1337/nvim-html-css",
      dependencies = {
	"nvim-treesitter/nvim-treesitter",
      },
      opts = {
	enable_on = {
	  "html",
	  "htmldjango",
	  "tsx",
	  "jsx",
	  "erb",
	  "svelte",
	  "vue",
	  "blade",
	  "php",
	  "templ",
	  "astro",
	},
	handlers = {
	  definition = {
	    bind = "gd"
	  },
	  hover = {
	    bind = "K",
	    wrap = true,
	    border = "none",
	    position = "cursor",
	  },
	},
	documentation = {
	  auto_show = true,
	},
	style_sheets = {
	  "https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css",
	  "https://cdnjs.cloudflare.com/ajax/libs/bulma/1.0.3/css/bulma.min.css",
	  "./index.css", -- `./` refers to the current working directory.
	},
      },
    },

    -- web-dev tools
    {
	'ray-x/web-tools.nvim',
	opts = {
	    keymaps = {
		rename = nil, 
		repeat_rename = '.',
	    },
	    hurl = {  -- hurl default
		show_headers = false, -- do not show http headers
		floating = false,   -- use floating windows (need guihua.lua)
		json5 = false,      -- use json5 parser require json5 treesitter
		formatters = {  -- format the result by filetype
		    json = { 'jq' },
		    html = { 'prettier', '--parser', 'html' },
		},
	    },
	},
    },
}
