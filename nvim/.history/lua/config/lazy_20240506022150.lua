local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  "folke/which-key.nvim",
  "folke/neodev.nvim",
  "williamboman/mason.nvim",
  -- "nvim-treesitter/nvim-treesitter-textobjects",

  -- Install fzf
  -- {
  --   "junegunn/fzf",
  --   run = function()
  --     vim.fn["fzf#install"]()
  --   end,
  --   keys = {
  --     { "<leader>ff", ":Files<CR>", mode = "n", desc = "Find Files" },
  --     { "<leader>fg", ":GFiles<CR>", mode = "n", desc = "Find Git Files" },
  --     { "<leader>fb", ":Buffers<CR>", mode = "n", desc = "Find Buffers" },
  --     { "<leader>fh", ":History<CR>", mode = "n", desc = "Find History" },
  --     { "<leader>fl", ":Lines<CR>", mode = "n", desc = "Find Lines" },
  --     { "<leader>fr", ":Rg<CR>", mode = "n", desc = "Find Ripgrep" },
  --     { "<leader>ft", ":Tags<CR>", mode = "n", desc = "Find Tags" },
  --     { "<leader>fm", ":Marks<CR>", mode = "n", desc = "Find Marks" },
  --     { "<leader>fs", ":Snippets<CR>", mode = "n", desc = "Find Snippets" },
  --     { "<leader>fd", ":Helptags<CR>", mode = "n", desc = "Find Help Tags" },
  --   },
  -- },
  
  -- telescope and its dependencies
  -- {
  --   'nvim-telescope/telescope.nvim', tag = '0.1.6',
  --   dependencies = { 'nvim-lua/plenary.nvim' }
  -- },

  -- treesitter with gcc compiler for windows
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   version = false,
  --   build = ":TSUpdate",
  --   -- event = { "LazyFile", "VeryLazy" },
  --   -- run = ":TSUpdate",
  --   ft = { "c", "cpp", "rust", "python", "cs", "lua", "typescript", "javascript", "html", "css", "json", "yaml", "toml" },
  -- },

  -- -- amongst toggleterm
  -- {'akinsho/toggleterm.nvim', version = "*", config = true},
  -- plenary
  -- { "nvim-lua/plenary.nvim", tag = "v1.5.0" },
  
  -- -- LSP
  -- {
  -- "neovim/nvim-lspconfig",
  -- -- event = "LazyFile",
  -- dependencies = {
  --   { "folke/neoconf.nvim", cmd = "Neoconf", config = false, dependencies = { "nvim-lspconfig" } },
  --   { "folke/neodev.nvim", opts = {} },
  --   "mason.nvim",
  --   "williamboman/mason-lspconfig.nvim",
  --   },
  -- },
  
  -- Formatter
  
})

-- require("lazy").setup({
--   spec = {
--     -- add tree sitter and its parsers
--     -- { "nvim-treesitter/nvim-treesitter", import = "lazyvim.plugins.treesitter" },
--     -- add LazyVim and import its plugins
--     { "LazyVim/LazyVim", import = "lazyvim.plugins" },
--     -- import any extras modules here
--     -- { import = "lazyvim.plugins.extras.lang.typescript" },
--     -- { import = "lazyvim.plugins.extras.lang.json" },
--     -- { import = "lazyvim.plugins.extras.ui.mini-animate" },
--     -- import/override with your plugins
--     -- { import = "plugins" },
--   },
--   defaults = {
--     -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
--     -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
--     lazy = false,
--     -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
--     -- have outdated releases, which may break your Neovim install.
--     version = false, -- always use the latest git commit
--     -- version = "*", -- try installing the latest stable version for plugins that support semver
--   },
--   install = { colorscheme = { "tokyonight", "habamax" } },
--   checker = { enabled = true }, -- automatically check for plugin updates
--   performance = {
--     rtp = {
--       -- disable some rtp plugins
--       disabled_plugins = {
--         "gzip",
--         -- "matchit",
--         -- "matchparen",
--         -- "netrwPlugin",
--         "tarPlugin",
--         "tohtml",
--         "tutor",
--         "zipPlugin",
--       },
--     },
--   },
-- })
