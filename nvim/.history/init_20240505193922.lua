-- .vim section
vim.cmd [[
set number
imap jj <ESC>
let mapleader = " "
]]


-- .lua section

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
