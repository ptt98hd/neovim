--< SETUPS >--------------------------------------------------------------------
local opt = vim.opt
local g = vim.g
local cmd = vim.cmd

--< OPTIONS >-------------------------------------------------------------------

-- Appearance
opt.termguicolors = true
opt.shortmess:append "sI"
opt.splitright = true
opt.splitbelow = true

-- Status Line
opt.laststatus = 0
opt.showmode = false
opt.ruler = false

-- Command Line
opt.cmdheight = 0
opt.showcmd = false

-- Numbers
opt.number = true
opt.numberwidth = 4
opt.fillchars = { eob = " " }
opt.signcolumn = "yes"

-- Cursor
opt.cursorline = true
opt.mouse = "a"
opt.whichwrap:append "<>[]hl"
opt.scrolloff = 4

-- Indent
opt.wrap = false
opt.expandtab = true
opt.autoindent = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
cmd("vnoremap < <gv")
cmd("vnoremap > >gv")

-- Input
opt.ignorecase = true
opt.smartcase = true

-- Memory
opt.undofile = true
opt.clipboard:append("unnamedplus")
opt.swapfile = false
