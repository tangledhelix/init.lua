local opt = vim.opt

-- uncomment to have nvim not change the cursor style (thin, block, ...)
-- opt.guicursor = ""

-- disable mouse support (default is 'nvi')
-- opt.mouse = ""

-- line numbering
opt.number = false
opt.relativenumber = true

-- indentation
opt.tabstop = 8
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- line wrapping. this is soft wrap - only wraps for display, not
-- a real wrap of the line.
-- NOTE: this doesn't interact well with j, k being remapped to gj, gk
opt.wrap = true

-- highlight search term after search ends
opt.hlsearch = true
-- use incremental search
opt.incsearch = true
-- ignore case in search, unless uppercase is present, then pay attention
opt.ignorecase = true
opt.smartcase = true

-- good colors in TUI
opt.termguicolors = true
opt.background = "dark"

-- don't get cursor too close to edge of viewport on scroll
opt.scrolloff = 4

-- gutter for debuggers and plugins
opt.signcolumn = "yes"

-- mark a column at this position (right margin indicator)
-- opt.colorcolumn = "80"

-- highlight the cursor line
opt.cursorline = true

-- encodings
opt.encoding = "utf8"
opt.fileencoding = "utf8"

-- split to the right & below... i don't like the defaults
opt.splitright = true
opt.splitbelow = true

-- undo history
opt.swapfile = false
opt.backup = false
opt.undofile = true

