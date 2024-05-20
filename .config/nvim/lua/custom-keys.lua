-- fetch keymapiii
local map = vim.api.nvim_set_keymap

-- map the key n to run the command :NvimTreeToggle
map('n', 'n', [[:NvimTreeToggle<CR>]], {})
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
-- update leader key to ,
-- map('n', '<C-g>', [[:NeoRunner <CR>]], { desc = "Compile with gcc and execute file" })
-- nnoremap <C-g> :w<CR>:!gcc % -o %< && ./%<<CR>
-- nnoremap <F5> :w<CR>:execute '!gcc % -o ' . expand('%:r') . ' && ./' . expand('%:r')<CR>
map('n', '<C-g>', [[:!gcc % -o $(basename % .c) && ./$(basename % .c)<CR>]],
	{ desc = "Compile and run c programs" })

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
vim.keymap.set("n", "<leader>ls", function() require("live-server-nvim").start() end, { desc = "[L]ive Server [S]tart" }) -- For LiveServer
vim.keymap.set("n", "<leader>lt", function() require("live-server-nvim").stop() end, { desc = "[L]ive Server S[t]op" })   -- For LiveServer

-- Shift+arrows selection
vim.api.nvim_set_keymap('n', '<S-Up>', 'v<Up>', { noremap = true })
vim.api.nvim_set_keymap('n', '<S-Down>', 'v<Down>', { noremap = true })
vim.api.nvim_set_keymap('n', '<S-Left>', 'v<Left>', { noremap = true })
vim.api.nvim_set_keymap('n', '<S-Right>', 'v<Right>', { noremap = true })

vim.api.nvim_set_keymap('v', '<S-Up>', '<Up>', { noremap = true })
vim.api.nvim_set_keymap('v', '<S-Down>', '<Down>', { noremap = true })
vim.api.nvim_set_keymap('v', '<S-Left>', '<Left>', { noremap = true })
vim.api.nvim_set_keymap('v', '<S-Right>', '<Right>', { noremap = true })

vim.api.nvim_set_keymap('i', '<S-Up>', '<Esc>v<Up>', { noremap = true })
vim.api.nvim_set_keymap('i', '<S-Down>', '<Esc>v<Down>', { noremap = true })
vim.api.nvim_set_keymap('i', '<S-Left>', '<Esc>v<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', '<S-Right>', '<Esc>v<Right>', { noremap = true })

-- Copy/Paste and Cut
vim.api.nvim_set_keymap('v', '<C-c>', 'y<Esc>i', { noremap = true })
vim.api.nvim_set_keymap('v', '<C-x>', 'd<Esc>i', { noremap = true })
vim.api.nvim_set_keymap('', '<C-v>', 'pi', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-v>', '<Esc>pi', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-z>', '<Esc>ui', { noremap = true })
