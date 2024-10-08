local lspconfig = require("lspconfig")

-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require("lsp-zero").preset({
	name = "minimal",
	set_lsp_keymaps = true,
	manage_nvim_cmp = true,
	suggest_lsp_servers = false,
})

lsp.ensure_installed({
	"ansiblels", -- ansible
	"clangd", -- c, c++
	"cssls", -- css, scss, less
	"html", -- HTML
	"jedi_language_server", -- python
	"jsonls", -- JSON
	"lua_ls", -- lua
	"marksman", -- markdown
	"perlnavigator", -- perl
	"ts_ls", -- javascript, typescript
	"yamlls", -- yaml
})

-- better icons in the gutter
lsp.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

-- (Optional) Configure lua language server for neovim
-- This is so it doesn't warn you of things like 'vim'
-- not being a valid variable
lsp.nvim_workspace()

lsp.setup()

vim.diagnostic.config({
	virtual_text = true,
})

-- YAML specific
lspconfig.yamlls.setup({
	settings = {
		-- Do not include keyOrdering. This complains if keys
		-- aren't alphanumerically ordered.
		yaml = { keyOrdering = false },
	},
})

