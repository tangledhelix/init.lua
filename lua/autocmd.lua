local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- when yanking text, briefly flash a selection visually to show what was
-- yanked (40ms)
local yank_group = augroup("HighlightYank", {})
autocmd("TextYankPost", {
	group = yank_group,
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch",
			timeout = 40,
		})
	end,
})

-- delete trailing whitespace on lines, when saving.
-- Except if it's markdown, then don't. Markdown can use EOL spaces
-- for paragraph formatting, which I want sometimes.
local wsclean_group = augroup("WhspClean", {})
autocmd({ "BufWritePre" }, {
	group = wsclean_group,
	pattern = "*",
	callback = function()
		if vim.bo.filetype ~= "markdown" then
			vim.cmd([[%s/\s\+$//e]])
		end
	end,
})

-- make backspace in netrw behave like in vimwiki
-- local netrw_group = augroup("NetRWbinds", {})
-- autocmd({ "FileType" }, {
-- 	pattern = "netrw",
-- 	group = netrw_group,
-- 	callback = function()
-- 		vim.keymap.set("n", "<BS>", "<Plug>NetrwBrowseUpDir")
-- 	end,
-- })
