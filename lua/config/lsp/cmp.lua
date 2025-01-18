local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

return {
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),
        ["<C-Space>"] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources(
        {
            { name = 'nvim_lsp' }, { name = 'nvim_lua' },
            { name = 'treesitter' }, { name = 'path' },
            { name = 'luasnip' },
        },
        {
            { name = 'buffer' },
        }
    )
}
