-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- vim.opt.winbar = "%=%m %f"
vim.opt.winbar = "%<%f%h%m%=%l,%c%V%7P"

vim.opt.clipboard = "unnamedplus"

vim.opt.clipboard:append("unnamed")
vim.opt.clipboard:append("unnamedplus") -- using system clipboard

-- set scrolloff
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 14

vim.opt.ignorecase = true -- case insensitive
vim.opt.showmatch = true -- show matching
vim.opt.hlsearch = true -- highlight search
vim.opt.incsearch = true -- incremental search
vim.opt.wildmode = "longest", "list" -- get bash-like tab completions
vim.opt.cc = "80" -- set an 80 column border for good coding style
vim.opt.cursorline = true -- highlight current cursorline
vim.opt.ttyfast = true -- Speed up scrolling in Vim

-- vim.filetype.add({
--   extension = {
--     hy = "hy",
--   },
-- })

-- change telescope to set initial mode to "normal"
-- require("telescope").setup({
--   pickers = {
--     buffers = {
--       initial_mode = "normal",
--     },
--   },
-- })
