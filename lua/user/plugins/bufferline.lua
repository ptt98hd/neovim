return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup {
      highlights = require("catppuccin.groups.integrations.bufferline").get(),
      options = {
        enforce_regular_tabs = true,
        offsets = {
          {
            filetype = "NvimTree",
            text = "Explorer",
            text_align = "center",
            padding = 0,
          },
        },
      },
    }
  end
}
