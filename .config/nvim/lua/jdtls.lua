lspconfig = require "lspconfig"

lspconfig.jdtls.setup {
	cmd = { "jdtls" },
	filetypes = { "java" },
}
