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

-- make backspace in netrw behave like in vimwiki
local netrw_group = augroup("NetRWbinds", {})
autocmd({ "FileType" }, {
    pattern = "netrw",
    group = netrw_group,
    callback = function()
        vim.keymap.set("n", "<BS>", "<Plug>NetrwBrowseUpDir")
    end,
})
