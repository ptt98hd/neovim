return {
  "nvim-telescope/telescope.nvim",
  event = "VeryLazy",
  branch = "0.1.x",
  dependencies = { 
    "nvim-lua/plenary.nvim", 
    "echasnovski/mini.nvim"
  },
  config = function()
    local actions = require("telescope.actions")
    require("telescope").load_extension("noice")
    require("telescope").setup {
      defaults = {
        sorting_strategy = 'ascending',

        layout_config = {
          horizontal = {
            prompt_position = "top",
            height = 0.9,
            width = 0.9,
            preview_width = 0.5,
            results_width = 0.5,
            preview_cutoff = 40,
          },
        },

        mappings = {
          i = {
            ["<esc>"] = actions.close
          }
        }
      }
    }
  end
}

