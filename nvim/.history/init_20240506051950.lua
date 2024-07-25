-- .vim section
vim.cmd [[
	set number
	imap jj <ESC>
	let mapleader = " "
]]


-- .lua section
lua require('nvim-treesitter.install').compilers = { "clang" }


-- bootstrap lazy.nvim, LazyVim and your plugins
-- require("config.lazy")
