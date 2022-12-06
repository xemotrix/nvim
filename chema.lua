local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- GOPLS
require'lspconfig'.gopls.setup{
    capabilities = capabilities,
    on_attach = function()
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
        vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
        vim.keymap.set({"n", "i"}, "<C-k>", vim.lsp.buf.signature_help, {buffer=0})

        vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, {buffer=0})
        vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, {buffer=0})

        vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer=0})
    end,
}


-- NVIM-CMP
vim.opt.completeopt={"menu","menuone","noselect"}

local cmp = require'cmp'
cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), {'i','c'}),
        ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), {'i','c'}),
        -- ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), {'i','c'}),
        ['<C-e>'] = cmp.mapping(cmp.mapping.complete(), {'i','c'}),
        --['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' }, -- For luasnip users.
    }, {
        { name = 'buffer' },
    })
})

