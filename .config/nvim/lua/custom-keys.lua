-- fetch keymapiii
local map = vim.api.nvim_set_keymap

-- map the key n to run the command :NvimTreeToggle
map('n', 'n', [[:NvimTreeToggle<CR>]], {})
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
-- update leader key to ,

map('n', '<C-g>', [[:!gcc % -o $(basename % .c) && ./$(basename % .c)<CR>]], { desc = "Compile and run c programs" })

vim.keymap.set("n", "<C-Up>", [[:Trouble<CR>]], { desc = 'Open toggle' })
vim.keymap.set("n", "<C-Down>", [[:TroubleClose<CR>]], { desc = 'Close toggle' })

--vim.keymap.set("n", "y", "+y", { desc = "Copy to clipboard" })

--vim.keymap.set("n", "p", "+p", { desc = "Paste from clipboard" })


-- nvim-dap keymappings
-- Press f5 to debug
map('n', '<F5>', "<cmd>lua require('dap').continue()<cr>",
	{ desc = { "Start debug" } })
-- Press CTRL + b to toggle regular breakpoint
map('n', '<C-b>', [[:lua require'dap'.toggle_breakpoint()<CR>]], { desc = { "Toggle breakpoint" } })

-- Press Ctrl+d to toggle debug mode, will remove NvimTree also
map('n', '<C-d>', [[:NvimTreeToggle<CR> :lua require'dapui'.toggle()<CR>]], {})

vim.g.mapleader = " "
