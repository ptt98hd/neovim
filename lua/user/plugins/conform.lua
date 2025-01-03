return {
  'stevearc/conform.nvim',
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup {
      formatter_by_ft = {
        lua = { "stylua" },
        c = { "clang_format" },
        java = { "google-java-format" },
        javascript = { "prettier" },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 200,
      }
    }
  end
}

