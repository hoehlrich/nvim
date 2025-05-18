return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    -- Telescope
    use "nvim-lua/plenary.nvim"
    use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
    use "nvim-telescope/telescope.nvim"

    -- Colors
    use "ellisonleao/gruvbox.nvim"
    use "nvim-treesitter/nvim-treesitter"
    use "nvim-treesitter/playground"

    -- LSP
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use "neovim/nvim-lspconfig"
    use "mfussenegger/nvim-jdtls"

    -- Completion
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-vsnip"
    use "hrsh7th/vim-vsnip"
    use "rafamadriz/friendly-snippets"
    use "github/copilot.vim"

    -- Terminal
    use "akinsho/toggleterm.nvim"

    -- Markdown
    use "jakewvincent/mkdnflow.nvim"

end)
