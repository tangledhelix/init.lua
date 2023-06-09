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
local wsclean_group = augroup("WhspClean", {})
autocmd({ "BufWritePre" }, {
	group = wsclean_group,
	pattern = "*",
	command = [[%s/\s\+$//e]],
})

