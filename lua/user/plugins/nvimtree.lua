return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup {
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },

      view = {
        adaptive_size = true,
        width = 40,
      },

      renderer = {
        root_folder_label = ":t",

        indent_markers = {
          enable = true,
        },
      },

      git = { enable = false },
    }
  end,
}
