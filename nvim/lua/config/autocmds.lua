-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local general = augroup("General", { clear = true })

-- Disable comments on new lines
-- autocmd("BufEnter", {
--   callback = function()
--     vim.cmd("set fo-=cro")
--   end,
--   group = general,
--   desc = "Disable comments on new lines",
-- })

-- Set shiftwidth to 4 for Python files
autocmd("FileType", {
  pattern = { "c", "cs", "cpp", "java", "python", "h", "yml", "yaml", "Dockerfile" },
  callback = function()
    vim.bo.softtabstop = 4
    vim.bo.shiftwidth = 4
    vim.bo.tabstop = 4
    vim.bo.expandtab = true
  end,
  group = general,
  desc = "Set shiftwidth, tabstop, and expand tab for files type like C",
})
