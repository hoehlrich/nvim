return require('packer').startup(function(use)
    -- Packer
    use 'wbthomason/packer.nvim'

    -- Colorscheme
    -- use { "morhetz/gruvbox" }
    use { "sainnhe/gruvbox-material" }


    -- Tresitter
    use 'nvim-treesitter/nvim-treesitter'

    -- LSP shit
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'

    -- Completion
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    -- Vimwiki
    use 'vimwiki/vimwiki'

    -- fzf
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'

    
    -- Transparency
    use 'xiyaowong/nvim-transparent'
end)

