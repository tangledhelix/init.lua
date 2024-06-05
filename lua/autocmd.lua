local autocmd = vim.api.nvim_create_autocmd

-- when yanking text, briefly flash a selection visually to show what was
-- yanked (40ms)
autocmd({ "TextYankPost" }, {
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
-- autocmd({ "BufWritePre" }, {
-- 	pattern = "*",
-- 	callback = function()
-- 		if vim.bo.filetype ~= "markdown" then
-- 			vim.cmd([[%s/\s\+$//e]])
-- 		end
-- 	end,
-- })

-- make backspace in netrw behave like in vimwiki
-- autocmd({ "FileType" }, {
-- 	pattern = "netrw",
-- 	callback = function()
-- 		vim.keymap.set("n", "<BS>", "<Plug>NetrwBrowseUpDir")
-- 	end,
-- })

autocmd({ "FileType" }, {
	pattern = "qf",
	callback = function()
            vim.opt_local.number = true
            vim.opt_local.relativenumber = false
	end,
})
