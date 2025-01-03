return {
  "folke/noice.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  config = function()
    require("notify").setup({
      timeout = 5000,
      minimum_width = 37,
      max_width = 37,
      render = "wrapped-compact",
    })

    require("noice").setup {
      presets = {
        bottom_search = false,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = false,
      },
      popupmenu = {
        backend = "cmp", -- @type 'nui'|'cmp'
      },
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
    }
  end
}
