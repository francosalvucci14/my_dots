-- Require LSP config which we can use to attach gopls
lspconfig = require("lspconfig")
util = require "lspconfig/util"
-- Since we installed lspconfig and imported it, we can reach
-- gopls by lspconfig.gopls
-- we can then set it up using the setup and insert the needed configurations

-- local on_attach = config.on_attach
-- local capabilities = config.capabilities
lspconfig.pylsp.setup({
	-- on_attach = require("jpv"),
	--capabilities = capabilities,
	cmd = { "pylsp" },
	filetypes = { "py" },

})
