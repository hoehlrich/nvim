require("telescope").setup{
    defaults = {
        mappings = {
            i = {
                ["<esc>"] = require('telescope.actions').close,
            },
        }
    }
}

require("telescope").load_extension("fzf")
