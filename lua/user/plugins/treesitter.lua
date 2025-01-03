return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  config = function()
    require 'nvim-treesitter.configs'.setup {
      ensure_installed = {
        "lua", "vim", "regex", "bash", "markdown", "markdown_inline",
      },
      sync_install = true,
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    }
  end
}

