lspconfig = require "lspconfig"

lspconfig.bashls.setup {
	cmd = { "bashls" },
	filetype = { "sh" }
}
