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
    { "rose-pine/neovim", name = "rose-pine" },
    { "shaunsingh/nord.nvim", name = "nord" },
    { "EdenEast/nightfox.nvim", name = "nightfox" },
    { "savq/melange-nvim", name = "melange" },

    -- requires ripgrep
    { "nvim-telescope/telescope.nvim", tag = "0.1.1",
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    { "ThePrimeagen/harpoon",
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    { "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    { "rodjek/vim-puppet" },

    -- requires tree-sitter
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", },
    "nvim-treesitter/nvim-treesitter-context",

    { "windwp/nvim-autopairs" },

    { "kylechui/nvim-surround", version = "*", },

    { "terrortylor/nvim-comment" },

    { "numToStr/FTerm.nvim" },

    { "nvim-lualine/lualine.nvim",
        dependencies = { "kyazdani42/nvim-web-devicons", lazy = true },
    },

    { "kdheepak/lazygit.nvim" },

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

    { "lewis6991/gitsigns.nvim" },

    { "sbdchd/neoformat" },

    { "tpope/vim-characterize" },

    { "vimwiki/vimwiki" },
    { "ElPiloto/telescope-vimwiki.nvim" },

})

