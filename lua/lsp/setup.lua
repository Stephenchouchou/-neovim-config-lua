-- reference: https://www.youtube.com/watch?v=lpQMeFph1RE
-- ref : https://github.com/williamboman/mason.nvim
-- ref : https://github.com/williamboman/mason-lspconfig.nvim
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "sumneko_lua", "clangd" }
})


local on_attach = function (_, _)
  vim.keymap.set('n',  '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n',  '<leader>ca', vim.lsp.buf.code_action, {})
  vim.keymap.set('n',  'gd'        , vim.lsp.buf.definition, {})
  vim.keymap.set('n',  'gD'        , vim.lsp.buf.declaration, {})
  vim.keymap.set('n',  'gh'        , vim.lsp.buf.hover, {})
  vim.keymap.set('n',  'gr'        , require('telescope.builtin').lsp_references, {})
end



require("lspconfig").sumneko_lua.setup {
	on_attach = on_attach
}

require("lspconfig").clangd.setup {
	on_attach = on_attach
}
