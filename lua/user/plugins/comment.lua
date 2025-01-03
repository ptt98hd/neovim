return {
  'numToStr/Comment.nvim',
  dependencies = "Djancyp/better-comments.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require('Comment').setup()

    require('better-comment').Setup({
      tags = {
        { -- TODO:
          name = "TODO",
          fg = "white",
          bg = "#4285f4",
          bold = true,
          virtual_text = "",
        },
        { -- DOCS:
          name = "DOCS",
          fg = "white",
          bg = "#1ca45c",
          bold = true,
          virtual_text = "",
        },
        { -- WARN:
          name = "WARNING",
          fg = "white",
          bg = "#ff9e0f",
          bold = true,
          virtual_text = "",
        },
        { -- FIXS:
          name = "FIXS",
          fg = "white",
          bg = "#db4437",
          bold = true,
          virtual_text = "",
        },
        { -- ! fixs
          name = "!",
          fg = "#db4437",
          bg = "",
          bold = true,
          virtual_text = "",
        },
        { -- ? warn
          name = "?",
          fg = "#ff9e0f",
          bg = "",
          bold = true,
          virtual_text = "",
        },
        { -- * docs
          name = "*",
          fg = "#34a853",
          bg = "",
          bold = true,
          virtual_text = "",
        },
        { -- + todo
          name = "+",
          fg = "#4285f4",
          bg = "",
          bold = true,
          virtual_text = "",
        },
      }
    })
  end
}

