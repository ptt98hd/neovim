return {
  "catppuccin/nvim",
  priority = 1000,
  name = "catppuccin",
  config = function()
    require("catppuccin").setup(
      {
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = true
        }
      }
    )
    vim.cmd.colorscheme "catppuccin"
  end
}
