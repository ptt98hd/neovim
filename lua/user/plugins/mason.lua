return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local mason_formatter = require('mason-tool-installer')

    mason.setup {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        },
        border = "rounded",
      },
    }

    mason_lspconfig.setup {
      ensure_installed = {
        "lua_ls",
        "clangd",
        "jdtls",
        "ts_ls",
      },
      automatic_installation = true,
    }

    mason_formatter.setup {
      ensure_installed = {
        'stylua',
        'clang-format',
        'google-java-format',
        'prettier',
      },
      auto_update = true,
      run_on_start = true,
    }
  end
}
