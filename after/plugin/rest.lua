require("rest-nvim").setup()

vim.keymap.set("n", "<leader>rr", "<Plug>RestNvim")
vim.keymap.set("n", "<leader>rp", "<Plug>RestNvimPreview")
vim.keymap.set("n", "<leader>ra", "<Plug>RestNvimLast")
