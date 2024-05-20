require("ibl").setup {
	indent = {
		char = "│",
		tab_char = "│",
		-- 	highlight = { "Function", "Label" },
	},
	-- scope = { enabled = true },
	exclude = {
		filetypes = {
			"help",
			"dashboard",
			"Trouble",
			"trouble",
			"mason",
			"notify",
			"toggleterm",
		},
	},

}
