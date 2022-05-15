
--LSP
-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)


require'lspconfig'.tsserver.setup{
on_attach = on_attach,
flags = {
-- This will be the default in neovim 0.7+
debounce_text_changes = 150,
},

capabilities = capabilities,
root_dir = function(fname)
return vim.fn.getcwd()
end


}

require("lspconfig").emmet_ls.setup{
on_attach = on_attach,
flags = {
-- This will be the default in neovim 0.7+
debounce_text_changes = 150,
},

capabilities = capabilities,

}
--
require'lspconfig'.cssls.setup{
on_attach = on_attach,
flags = {
-- This will be the default in neovim 0.7+
debounce_text_changes = 150,
},

capabilities = capabilities,
root_dir = function(fname)
return vim.fn.getcwd()
end,

}


require'lspconfig'.html.setup{
on_attach = on_attach,
flags = {
-- This will be the default in neovim 0.7+
debounce_text_changes = 150,
},

capabilities = capabilities,
root_dir = function(fname)
return vim.fn.getcwd()
end


}


--
--
