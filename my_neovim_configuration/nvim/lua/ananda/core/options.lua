local opt = vim.opt -- for conciseness

--line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- line wrapping
opt.wrap = false

--search settings
opt.ignorecase = true
opt.smartcase = true

--cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

--don' highlight after the search is complete
opt.hlsearch = false

-- scrolloff at marginal 8 lines
opt.scrolloff = 8

-- set a vertical cursor at all modes
opt.guicursor = "a:block-nCursor"
-- for more go to :h guicursor

-- mouse compatible in all modes
-- opt.mouse = "a"
