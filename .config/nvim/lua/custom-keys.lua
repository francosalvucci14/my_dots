-- fetch keymapiii
local map = vim.api.nvim_set_keymap

-- map the key n to run the command :NvimTreeToggle
map('n', 'n', [[:NvimTreeToggle<CR>]], {})
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
-- update leader key to ,
-- vim.keymap.set("n", "<leader>ot", function() require("trouble").open() end)
-- vim.keymap.set("n", "<leader>ct", function() require("trouble").close() end)
vim.keymap.set("n", "<C-Up>", [[:Trouble<CR>]], { desc = 'Open toggle' })
vim.keymap.set("n", "<C-Down>", [[:TroubleClose<CR>]], { desc = 'Close toggle' })

vim.keymap.set("n", "y", "+y", { desc = "Copy to clipboard" })
vim.keymap.set("n", "yy", "+yy", { desc = "Copy to clipboard" })
vim.keymap.set("n", "Y", "+Y", { desc = "Copy to clipboard" })

vim.keymap.set("n", "p", "+p", { desc = "Paste from clipboard" })
vim.keymap.set("n", "pp", "+pp", { desc = "Paste from clipboard" })
vim.keymap.set("n", "P", "+P", { desc = "Paste from clipboard" })

-- nvim-dap keymappings
-- Press f5 to debug
map('n', '<F5>', [[:lua require'dap'.continue()<CR>]], { desc = { "Start debug" } })
-- Press CTRL + b to toggle regular breakpoint
map('n', '<C-b>', [[:lua require'dap'.toggle_breakpoint()<CR>]], { desc = { "Toggle breakpoint" } })

vim.g.mapleader = " "
