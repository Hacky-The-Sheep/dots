return {

	-- Formatting
	{ "mhartington/formatter.nvim" },

	-- FloatTerm
	{ "voldikss/vim-floaterm" },

	-- LaTeX
	{ "lervag/vimtex" },

	-- Commentary
	{ "tpope/vim-commentary" },

	-- Treesitter
	{ "nvim-treesitter/nvim-treesitter" },

	-- LSP
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v1.x",
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

	-- TagBar
	{ "preservim/tagbar" },
}
