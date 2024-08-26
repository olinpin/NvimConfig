require("olinpin.set")
require("olinpin.lazy")
require("olinpin.remap")
require("olinpin.commands")

-- this needs to be set after lazy
vim.o.timeoutlen = 0
-- setup prolog
require('lspconfig/prolog_lsp')
require('lspconfig').prolog_lsp.setup{}
