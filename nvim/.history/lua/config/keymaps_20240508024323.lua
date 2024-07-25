-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.keymap.set(
--   "n",
--   "<leader>sx",
--   require("telescope.builtin").resume,
--   { noremap = true, silent = true, desc = "Resume" }
-- )

-- Set keymap for <leader>tt to run !start powershell and cmd to the current working directory
vim.keymap.set("n", "<leader>tt", function()
  -- get cwd and run cmd
  local cwd = vim.fn.getcwd()
  vim.cmd('!start powershell -NoExit -Command "cd ' .. cwd .. '"')
end, { noremap = true, silent = true, desc = "Start powershell" })
vim.keymap.set("n", "<leader>tc", function()
  local cwd = vim.fn.getcwd()
  vim.cmd('!start cmd /K cd /D "' .. cwd .. '"')
end, { noremap = true, silent = true, desc = "Start cmd" })
