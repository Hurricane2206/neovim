return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer", "clangd"
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    'mrcjkb/rustaceanvim',
    version = '^5',
    lazy = 'false',
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  		"vim", "lua", "vimdoc",
      "html", "css", "c", "cpp",
      "rust", "toml", "yaml"
  		},
  	},
  },
}
