return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- LSP shit
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'

    -- Treesitter
    use 'nvim-treesitter/nvim-treesitter'

    -- Ricing (funny)
    use 'ellisonleao/gruvbox.nvim'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Terminal
    use {
        'akinsho/toggleterm.nvim', tag = '*', config = function()
        require("toggleterm").setup()
    end}

    -- Completion
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    -- Fzf
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'

    -- Vimwiki
    use 'vimwiki/vimwiki'
    
end)
