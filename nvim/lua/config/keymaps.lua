-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- timeout
vim.o.timeout = true
vim.o.timeoutlen = 220

-- Codeium
vim.keymap.set("i", "<A-f>", require("neocodeium").accept)
vim.keymap.set("i", "<A-w>", function()
  require("neocodeium").accept_word()
end)
vim.keymap.set("i", "<A-a>", function()
  require("neocodeium").accept_line()
end)
vim.keymap.set("i", "<A-e>", function()
  require("neocodeium").cycle_or_complete()
end)
vim.keymap.set("i", "<A-d>", function()
  require("neocodeium").cycle_or_complete(-1)
end)
vim.keymap.set("i", "<A-c>", function()
  require("neocodeium").clear()
end)

-- localleader to \
vim.g.maplocalleader = "\\"

-- Treesitter textobjects
local ts_repeat_move = require("nvim-treesitter.textobjects.repeatable_move")

-- Repeat movement with ; and ,
-- ensure ; goes forward and , goes backward regardless of the last direction
vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move_next)
vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_previous)

-- General
vim.keymap.set("i", "jk", "<ESC>:w<CR>", { noremap = true, silent = true, expr = false, desc = "jk to <ESC>:w<CR>" })
vim.keymap.set("i", "jj", "<ESC>", { noremap = true, silent = true, expr = false, desc = "jj to <ESC>" })
vim.keymap.set("i", "<C-l>", "<C-w>", { silent = true, desc = "Delete word in insert" })
vim.keymap.set("i", "<C-BS>", "<C-w>", { silent = true, desc = "Delete word in insert" })
--

-- Disable default terminal
-- vim.keymap.set("n", "<C-/>", vim.NIL)

-- Buffer open telescope
vim.keymap.set("n", "<c-/>", "<CMD>Telescope buffers<CR>", { remap = true, silent = true, desc = "Open buffer" })

-- vim.keymap.set("n", "<leader>tt", function()
--   -- Set keymap for <leader>tt to run !start powershell and cmd to the current working directory
--   -- get cwd and run cmd
--   local cwd = vim.fn.getcwd()
--   vim.cmd('!start powershell -NoExit -Command "cd ' .. cwd .. '"')
-- end, { noremap = true, silent = true, desc = "Start powershell" })

-- open new terminal windows
vim.keymap.set("n", "<leader>tc", function()
  local cwd = vim.fn.getcwd()
  vim.cmd('!start cmd /K cd /D "' .. cwd .. '"')
end, { noremap = true, silent = true, desc = "Start cmd" })

-- Map <C-m> to none in normal mode
vim.keymap.set("n", "<C-m>", "<NOP>", { noremap = true, silent = true })

-- Set Oil to open parent directory
vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })

-- Set keymap to set :ProjectRoot to fo
vim.keymap.set("n", "<leader>fo", "<CMD>ProjectRoot<CR>", { desc = "Set project root" })

-- Add a custom keybinding to toggle the colorscheme
vim.api.nvim_set_keymap("n", "<leader>tt", ":CyberdreamToggleMode<CR>", { noremap = true, silent = true })

-- Hop Word command
vim.keymap.set("n", "f", "<CMD>HopWord<CR>", { noremap = true, silent = true, desc = "Hop Word" })
vim.keymap.set("v", "f", "<CMD>HopWord<CR>", { noremap = true, silent = true, desc = "Hop Word" })
