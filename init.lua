vim.g.mapleader = " "

-- Limit vimwiki to its own directory; .md files outside of the vimwiki
-- directory are just normal Markdown files
vim.g.vimwiki_global_ext = 0

-- Set up vimwiki. This has come before the plugin is loaded; easiest to
-- ensure that here.
vim.cmd([[
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
]])

require("set")
require("plugins")
require("remap")
require("filetype")
require("autocmd")
require("formatters")

