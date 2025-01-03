return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvim_tree = {
      sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
      filetypes = { 'NvimTree' },
    }

    require('lualine').setup {
      options = {
        theme = 'auto',
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
      },

      sections = {
        lualine_a = { 'mode' },
        lualine_b = {
          {
            'filetype',
            colored = false,
          },
        },
        lualine_c = {
          {
            'filename',
            path = 1,
            file_status = false,
            symbols = {
              unnamed = 'No Name',
              newfile = 'New',
            }
          }
        },
        lualine_x = { 'diagnostics', 'branch', },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
      },

      inactive_sections = {
        lualine_a = { 'mode' },
        lualine_b = {
          {
            'filetype',
            colored = false,
          },
        },
        lualine_c = {
          {
            'filename',
            path = 1,
            file_status = false,
            symbols = {
              unnamed = 'No Name',
              newfile = 'New',
            }
          }
        },
        lualine_x = { 'diagnostics', 'branch', },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
      },

      extensions = {
        nvim_tree,
        'lazy',
        'mason',
        'toggleterm',
        'nvim-dap-ui',
        'symbols-outline',
      }
    }
  end
}
