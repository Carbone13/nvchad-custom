local overrides = require "custom.configs.overrides"

local plugins = {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
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
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
  },
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = overrides.telescope,
  },
  {
    "jakemason/ouroboros",
    ft = { "c", "cpp" },
    dependencies = "nvim-lua/plenary.nvim",
  },
  {
    "romgrk/barbar.nvim",
    lazy = false,
    dependencies = {
      "lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
      "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    config = function()
      require("barbar").setup {
        animation = true,
        auto_hide = false,
        tabpages = true,
        clickable = true,
        highlight_inactive_file_icons = false,
        highlight_visible = true,
      }
    end,
  },
  {
    "VonHeikemen/searchbox.nvim",
    lazy = false,
    dependencies = "MunifTanjim/nui.nvim",
  },
  {
    "stevearc/dressing.nvim",
    lazy = false,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    lazy = false,
    opts = overrides.lualine,
    config = function(_, opts)
      require("lualine").setup(opts)
    end,
  },
  {
    "phaazon/hop.nvim",
    lazy = false,
    config = function()
      require("hop").setup { keys = "azertyuiopsdfklmwxcvbn" }
    end,
  },
  {
    dir = "~/Developer/runner/",
    dependencies = { "nvim-telescope/telescope.nvim" },
    opts = {},
    lazy = false,
  },
  {
    "akinsho/toggleterm.nvim",
    config = true,
    lazy = false,
  },
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "NvChad/nvterm",
    enabled = false,
  },
}

return plugins
