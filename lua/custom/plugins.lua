local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- {
  --   "SmiteshP/nvim-navic",
  --   requires = "neovim/nvim-lspconfig"
  -- },
 --
  {
  "utilyre/barbecue.nvim",
  name = "barbecue",
  event = { "VeryLazy"},
  version = "*",
  dependencies = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons", -- optional dependency
  },
  opts = {
    -- configurations go here
  },
 },
  {
    "mechatroner/rainbow_csv",
    event = { "VeryLazy"},
  },

  -- rainbow brackets
  -- {
  --   "p00f/nvim-ts-rainbow",
  --   event = { "VeryLazy"},
  --   dependencies = {
  --     "nvim-treesitter/nvim-treesitter",
  --   },
  -- },
  {
    "sindrets/diffview.nvim",
    event = { "VeryLazy"},
  },

  -- php fixer and formatter
  {
    "stephpy/vim-php-cs-fixer",
    event = { "VeryLazy"},
  },
  {
    "phpstan/phpstan",
    event = { "VeryLazy"},
  },
  {
    "embear/vim-localvimrc",
    event = { "VeryLazy"},
  },
  {
    "tpope/vim-fugitive",
    event = { "VeryLazy"},
  },


  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-olorizer.lua",
  --   enabled = false
  -- },

  -- To use a extras plugin
  -- { import = "custom.configs.extras.symbols-outline", },

  { import = "custom.configs.extras.copilot" },
  { import = "custom.configs.extras.trouble" },
  { import = "custom.configs.extras.symbols-outline"},
  { import = "custom.configs.extras.todo-comments"},
}

return plugins
