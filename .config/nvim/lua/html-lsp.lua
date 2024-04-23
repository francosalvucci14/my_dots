lspconfig = require "lspconfig"

lspconfig.html.setup({
	cmd = { "vscode-html-language-server" },
	filetypes = { "html" },
})
