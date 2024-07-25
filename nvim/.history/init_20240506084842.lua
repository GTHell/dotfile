-- .vim section
vim.cmd [[
	set number
	imap jj <ESC>
	let mapleader = " "
	require 'nvim-treesitter.install'.compilers = { "clang" }
]]


-- .lua section
-- require('nvim-treesitter.install').compilers = { "clang" }


-- bootstrap lazy.nvim, LazyVim and your plugins
-- require("config.lazy")

