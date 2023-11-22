require("ibl").setup {
	indent = {
		char = "│",
		tab_char = "│",
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
