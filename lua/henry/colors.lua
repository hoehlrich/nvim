-- Gruvbox
require('gruvbox').setup({
    transparent_mode = true
})
vim.o.background = 'dark'
vim.cmd([[colorscheme gruvbox]])

-- Fix LspInfoBorder
vim.cmd([[hi clear LspInfoBorder]])
vim.cmd([[hi link LspInfoBorder FloatBorder]])
