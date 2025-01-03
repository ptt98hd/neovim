return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
  end,
  config = function()
    require("which-key").setup {
      win = {
        border = "single",
      },
    }

    require("which-key").add {
      { -- ! NORMAL MODE
        mode = "n",

        { "<bs>",      "<cmd>bd<cr>",                                  desc = "Delete Buffer",   icon = "" },
        { "<tab>",     "<cmd>bnext<cr>",                               desc = "Next Buffer",     icon = "" },
        { "<s-tab>",   "<cmd>bprev<cr>",                               desc = "Previous Buffer", icon = "" },
        { "`",         "<cmd>NvimTreeToggle<cr>",                      desc = "Explorer",        icon = "" },
        { "<cr>",      "<cmd>Telescope find_files<cr>",                desc = "File",            icon = "" },
        { "<esc>",     "<cmd>Telescope buffers<cr>",                   desc = "Buffers",         icon = "" },
        { "/",         "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Text",            icon = "" },
        { "\\",        "<cmd>Telescope live_grep<cr>",                 desc = "Grep",            icon = "" },
        { "<leader>g", "<cmd>LazyGit<cr>",                             desc = "Git",             icon = "" },
        { "<leader>l", "<cmd>Lazy<cr>",                                desc = "Lazy",            icon = "" },
        { "<leader>m", "<cmd>Mason<cr>",                               desc = "Mason",           icon = "" },
        { "<leader>t", "<cmd>ToggleTerm direction=horizontal<cr>",     desc = "Terminal",        icon = "" },
      },
      { -- ! TERMINAL MODE
        mode = "t",
        { "<esc>", "<cmd>ToggleTermToggleAll<cr>", desc = "Toggle Termimal", icon = "" },
      }
    }
  end
}
