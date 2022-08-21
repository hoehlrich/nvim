local configs = require'nvim-treesitter.configs'
configs.setup {
    ensure_installed = "lua",
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
    }
}

