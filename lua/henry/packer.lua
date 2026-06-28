return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    -- Telescope
    use "nvim-lua/plenary.nvim"
    use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
    use "nvim-telescope/telescope.nvim"

    -- Colors
    use "ellisonleao/gruvbox.nvim"
    use "nvim-treesitter/nvim-treesitter"

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
    -- use "github/copilot.vim"

    -- Terminal
    use "akinsho/toggleterm.nvim"

    -- Markdown
    use "jakewvincent/mkdnflow.nvim"

    -- LeetCode
    use {
        "kawre/leetcode.nvim",
        run = ":TSUpdate html",
        requires = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-telescope/telescope.nvim", -- your picker
        },
        config = function()
            require("leetcode").setup({
                lang = "python3",
                injector = {
                    ["python3"] = {
                        before = {
                            "from typing import List, Optional, Dict, Tuple, Set",
                            "from collections import defaultdict, Counter, deque",
                            "import heapq, math, bisect",
                        },
                    },
                },
            })
        end,
    }


end)
