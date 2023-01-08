-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Telescope (FZF)
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Catppuccin
	use ({
		'catppuccin/nvim',
		as = 'catppuccin',
		config = function()
			vim.cmd('colorscheme catppuccin-mocha')
		end})

	-- Lualine
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- Treesitter
    use ('nvim-treesitter/nvim-treesitter',
    {run =  ':TSUpdate'})
    use ('nvim-treesitter/playground')

	-- Commentary
	use ('tpope/vim-commentary')

	-- LSP
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

            -- Formatting 
            {'mhartington/formatter.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

    -- TagBar
    use 'preservim/tagbar'

    -- Markdown Live Preview
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    -- LaTex
    use 'lervag/vimtex'

    -- VimWiki
    use 'vimwiki/vimwiki'

    -- FloatTerm
    use 'voldikss/vim-floaterm'

    -- Autoclose
    use 'm4xshen/autoclose.nvim'

    -- Mind 🧠
    use {
        'phaazon/mind.nvim',
        branch = 'v2.2',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require'mind'.setup()
        end
    }

    -- Nvim-Tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
end)
