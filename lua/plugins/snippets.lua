return {
    {
        "rafamadriz/friendly-snippets",

        config = function()
            require("luasnip.loaders.from_vscode").lazy_load({
                paths = { "~/.config/nvim/lua/snippets" },
            })
            require("luasnip.loaders.from_vscode").lazy_load()

            require("luasnip").filetype_extend("javascript", { "vue" })
        end,
    },
}
