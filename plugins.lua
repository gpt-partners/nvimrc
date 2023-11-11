local overrides = require "custom.configs.overrides"

local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },
  { "tpope/vim-fugitive", cmd = { "Git" } },
  {
    import = "custom.plugins.neotest",
  },
  {
    import = "custom.plugins.dap",
  },

  {
    "zbirenbaum/copilot.lua",
    opts = overrides.copilot,
    cmd = { "Copilot" },
  },
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
  {
    "stevearc/conform.nvim",
    opts = overrides.conform,
  },
}

return plugins
