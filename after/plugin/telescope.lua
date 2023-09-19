-- Use vertical layout. I'm more likely to have tall windows side by side than always
-- wide windows.
require("telescope").setup{
    defaults = {
        layout_strategy = 'vertical',
        layout_config = { height = 0.95 },
    }
}

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find File(s)" })
vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Find Git file(s)" })
-- vim.keymap.set("n", "<leader>fs", function()
-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") })
-- end, { desc = "Find String" })
vim.keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "Find String" })
-- vim.keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "Find Word" })
vim.keymap.set("n", "<leader>fa", builtin.resume, { desc = "Find Again (open picker in previous state)" })

-- vimwiki stuff
require("telescope").load_extension("vimwiki")
local wiki = require("telescope").extensions.vimwiki
vim.keymap.set("n", "<leader>fw", wiki.live_grep, { desc = "Find in Wiki" })
