-- Define formatters
vim.g.neoformat_enabled_javascript = { "prettier" }
vim.g.neoformat_enabled_html = { "prettier" }
vim.g.neoformat_enabled_css = { "prettier" }
vim.g.neoformat_enabled_python = { "black" }
vim.g.neoformat_enabled_lua = { "stylua" }

vim.keymap.set("n", "<leader>F", "<cmd>:Neoformat<cr>", {})

