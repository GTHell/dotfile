return { -- add gruvbox
  -- dashboard specs
  {
    "nvimdev/dashboard-nvim",
    -- setup local logo
    opts = function(_, opts)
      local logo = [[
                                 

      ░░░░░░░░░░░░░░░░░░░░░░░░░░░     ███████ ██ ████████ ██   ██
      ░▒▒░░░░█████████████░░░░▒▒░     ██      ██    ██    ██   ██
      ░▒░░▒███████▓█████████▒░░▒░     ███████ ██    ██    ███████
      ░░░██░░██▓██████████████░░░          ██ ██    ██    ██   ██
      ░░▒███████▓▓█████████████░░     ███████ ██    ██    ██   ██
      ░░██████▒░███████████████░░                                
      ░░░█████████▒░█░░░░░▒░▓██░░                                
      ░▒░░████░░░▓░░░░██▒░▓░░█▒░░                                
      ░▒▒░██░░▒█▒░░▒░▓░░█▓▒░██░▒░                                
      ░▒▓░░█░░░░░░░▓░▓░░░░░░█░░▓░         _____                  
      ░▒▓▓░█▒░░░░░█▒░▓▒░░░░▒█░▒▓░        / ___/____ _____ ___    
      ░▒▒▓░░▒▒▒░░░▓░░▒▓░░▒▓▓▒░▓▓░        \__ \/ __ `/ __ `__ \   
      ░▒▒▓▓▓▓▒▒░▒▒████▓▓░▒▒▒▓▓▓▒░       ___/ / /_/ / / / / / /   
      ░▒▒▒▒▒▒▒▒░░▒█░░██░░▓▒▓▒▒▒▒░      /____/\__,_/_/ /_/ /_/    
      ░▒▒▒▒░░▒█▒░░░░░░░░░▓▒░▒▒▒▒░                                
      ░▒▒▒░░██▒███░▒▓▒▓██░█░░░▒▒░                                
      ░░░░░██░░░███████▓░░███░░░░                                
      ░███████░░░▓░░░▓█░░░███████                                
      ████████░░░░░░░░░░░░███████                                
        ]]

      saturn_plus = [[
                                                              
                                                      ___     
                                                   ,o88888    
                                                ,o8888888'    
                          ,:o:o:oooo.        ,8O88Pd8888"     
                      ,.::.::o:ooooOoOoO. ,oO8O8Pd888'"       
                    ,.:.::o:ooOoOoOO8O8OOo.8OOPd8O8O"         
                   , ..:.::o:ooOoOOOO8OOOOo.FdO8O8"           
                  , ..:.::o:ooOoOO8O888O8O,COCOO"             
                 , . ..:.::o:ooOoOOOO8OOOOCOCO"               
                  . ..:.::o:ooOoOoOO8O8OCCCC"o                
                     . ..:.::o:ooooOoCoCCC"o:o                
                     . ..:.::o:o:,cooooCo"oo:o:               
                  `   . . ..:.:cocoooo"'o:o:::'               
                  .`   . ..::ccccoc"'o:o:o:::'                
                 :.:.    ,c:cccc"':.:.:.:.:.'                 
               ..:.:"'`::::c:"'..:.:.:.:.:.'                  
             ...:.'.:.::::"'    . . . . .'                    
            .. . ....:."' `   .  . . ''                       
          . . . ...."'                                        
          .. . ."'                                            
         .                                                    
                                                              
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"

      opts.config.header = vim.split(saturn_plus, "\n")

      -- opts.theme = "hyper"
      return opts
    end,
  },
  {
    "folke/which-key.nvim",
    vscode = true,
    -- opts for prefix t for terminal
    opts = function(_, opts)
      local wk = require("which-key")
      wk.register({
        -- t = {
        --   name = "Terminal",
        --   -- t = { "<cmd>LazyVim.terminal()<cr>", "Toggle Terminal" },
        --   -- c = { "<cmd>LazyVim.terminal('cmd')<cr>", "Start cmd" },
        --   -- p = { "<cmd>LazyVim.terminal('powershell')<cr>", "Start powershell" },
        -- },
        { "t", group = "Terminal" },
      })
      return opts
    end,
  },
  -- change layout of telescope
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        mode = { "n", "v" },

        ["<leader>t"] = { name = "+terminal" },
      },
    },
  },

  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
  -- cmp super tab
  -- autocomplete key map
  {
    "hrsh7th/nvim-cmp",
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end

      local luasnip = require("luasnip")
      local cmp = require("cmp")

      -- Setup nvim-cmp.
      cmp.setup({
        mapping = {
          ["<C-d>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          -- ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.close(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        },
      })

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
            -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
            -- this way you will only jump inside the snippet region
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
      })
    end,
  },
  -- add pyright to lspconfig
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {},
      },
    },
  },
  -- add jsonls and schemastore packages, and setup treesitter for json, json5 and jsonc
  { import = "lazyvim.plugins.extras.lang.json" },
  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
      },
    },
  },
  {
    "ahmedkhalf/project.nvim",
    opts = {
      -- setup = function()
      -- require("project_nvim").setup({
      --   patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "Cargo.toml" },
      --   silent_chdir = false,
      -- })
      -- end,
      patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "*.csproj", "*.sln" },
    },
  },
}
