return {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)

    -- install jsregexp (optional!).
    build = "make install_jsregexp",

    opts = {
        enable_autosnippets = true,
        store_selection_keys = "<Tab>",
        update_events = "TextChanged, TextChangedI",
        delete_check_events = "TextChanged, InsertLeave",
    },

    init = function() 
        local ls = require("luasnip")
        local s = ls.snippet 
        local t = ls.text_node 
        local f = ls.function_node

        -- THis function checks to see if we're in math mode or not.
        -- It is used to define some context-aware snippets
        function in_mathzone()
            return vim.api.nvim_eval('vimtex#syntax#in_mathzone()') == 1
        end

        vim.keymap.set({ "i", "s" }, "<C-K>", function()
          if ls.expand_or_jumpable() then
            ls.expand_or_jump()
          end
        end, { silent = true })

        vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
        vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})

        vim.keymap.set({"i", "s"}, "<C-E>", function()
            if ls.choice_active() then
                ls.change_choice(1)
            end
        end, {silent = true})

        -- Lazy load snippets
        require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})
        require("luasnip.loaders.from_lua").lazy_load({paths = "~/.config/nvim/LuaSnip"})
    end
}
