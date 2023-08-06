return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Telescope
    use "nvim-lua/plenary.nvim"
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use 'nvim-telescope/telescope.nvim'
    require('telescope').load_extension('fzf')

    -- Colors
    use 'ellisonleao/gruvbox.nvim'
    use 'nvim-treesitter/nvim-treesitter'

    -- LSP
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'

    -- Completion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'SirVer/ultisnips'
    use 'quangnguyen30192/cmp-nvim-ultisnips'
end)
