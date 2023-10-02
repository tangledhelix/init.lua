-- Use vertical layout. I'm more likely to have tall windows side by side than always
-- wide windows.
require("telescope").setup{
    defaults = {
        layout_strategy = 'vertical',
        layout_config = { height = 0.95, width = 0.95 },
    }
}
require("telescope").load_extension("vimwiki")

local builtin = require("telescope.builtin")
local wiki = require("telescope").extensions.vimwiki

vim.keymap.set("n", "<leader>fa", builtin.resume, { desc = "Find Again (open picker in previous state)" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffer" })
vim.keymap.set("n", "<leader>fc", builtin.commands, { desc = "Find Command" })
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find File" })
vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Find Git file" })
vim.keymap.set("n", "<leader>fhc", builtin.command_history, { desc = "Find in Command History" })
vim.keymap.set("n", "<leader>fhs", builtin.search_history, { desc = "Find in Search History" })
vim.keymap.set("n", "<leader>fj", builtin.jumplist, { desc = "Find in jumplist" })
vim.keymap.set("n", "<leader>fm", builtin.marks, { desc = "Find Mark" })
vim.keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "Find String" })
vim.keymap.set("n", "<leader>fw", wiki.live_grep, { desc = "Find in Wiki" })
