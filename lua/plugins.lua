local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

    -- color schemes
    -- { "rose-pine/neovim", name = "rose-pine" },
    -- { "shaunsingh/nord.nvim", name = "nord" },
    -- { "EdenEast/nightfox.nvim", name = "nightfox" },
    { "savq/melange-nvim", name = "melange" },

    -- telescope: search-finder system
    -- Note: "live_grep" requires ripgrep program is installed
    { "nvim-telescope/telescope.nvim", tag = "0.1.3",
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    -- awesome magic
    { "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    -- comments
    { "terrortylor/nvim-comment" },
    { "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    { "rodjek/vim-puppet" },

    -- tree-sitter, AST modeling to help highlighter & more
    -- requires tree-sitter program is installed
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", },
    { "nvim-treesitter/nvim-treesitter-context" },

    -- management of pairings / surroundings (parens, quotes, braces, ...)
    { "windwp/nvim-autopairs" },
    { "RRethy/nvim-treesitter-endwise" },
    { "kylechui/nvim-surround", version = "*", },

    -- pop-up terminal
    { "numToStr/FTerm.nvim" },

    -- status line & gutter
    { "nvim-lualine/lualine.nvim",
        dependencies = { "kyazdani42/nvim-web-devicons", lazy = true },
    },
    { "lewis6991/gitsigns.nvim" },

    -- git UI
    { "kdheepak/lazygit.nvim" },

    -- LSP / autocomplete subsystem
    { "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        dependencies = {
			-- LSP Support
	    { "neovim/nvim-lspconfig" }, -- Required
	    { "williamboman/mason.nvim" }, -- Optional
	    { "williamboman/mason-lspconfig.nvim" }, -- Optional

	    -- Autocompletion
	    { "hrsh7th/nvim-cmp" }, -- Required
	    { "hrsh7th/cmp-nvim-lsp" }, -- Required
	    { "hrsh7th/cmp-buffer" }, -- Optional
	    { "hrsh7th/cmp-path" }, -- Optional
	    { "saadparwaiz1/cmp_luasnip" }, -- Optional
	    { "hrsh7th/cmp-nvim-lua" }, -- Optional

	    -- Snippets
	    { "L3MON4D3/LuaSnip" }, -- Required
	    { "rafamadriz/friendly-snippets" }, -- Optional
        },
    },

    -- formatter
    { "sbdchd/neoformat" },

    -- weird gadget you almost never need but when you do need it,
    -- it's super handy to have. also tpope is the goat.
    { "tpope/vim-characterize" },

    -- DAP
    { "mfussenegger/nvim-dap" },
    { "rcarriga/nvim-dap-ui" },
    { "theHamsta/nvim-dap-virtual-text" },
    { "nvim-telescope/telescope-dap.nvim" },

    -- DAP language adapters
    { "mfussenegger/nvim-dap-python" },

    -- REST client
    { "rest-nvim/rest.nvim",
        dependencies = { "nvim-lua/plenary.nvim" }
    }

})

