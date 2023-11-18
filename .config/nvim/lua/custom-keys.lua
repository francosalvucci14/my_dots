-- fetch keymapiii
local map = vim.api.nvim_set_keymap

-- map the key n to run the command :NvimTreeToggle
map('n', 'n', [[:NvimTreeToggle<CR>]], {})
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
-- update leader key to ,
-- vim.keymap.set("n", "<leader>ot", function() require("trouble").open() end)
-- vim.keymap.set("n", "<leader>ct", function() require("trouble").close() end)
vim.keymap.set("n", "<C-Up>",[[:Trouble<CR>]],{desc = 'Open toggle'})
vim.keymap.set("n", "<C-Down>",[[:TroubleClose<CR>]],{desc = 'Close toggle'} )

vim.g.mapleader = " "

 

