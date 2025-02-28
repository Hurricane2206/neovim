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
        "clangd", "rust-analyzer"
      },
    },
  },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "theHamsta/nvim-dap-virtual-text",
      opts = {},
    },
  },
  {
    "julianolf/nvim-dap-lldb",
    opts = {
      codelldb_path = "./lldb/codelldb-linux-x64.vsix",
    },
  }
}
