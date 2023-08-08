require("mkdnflow").setup({
    perspective = {
        priority = "current",
    },
    mappings = {
        MkdnEnter = {{'i', 'n', 'v'}, '<CR>'}
    },
})

local M = {}

function M.goto_index()
    vim.cmd.cd("~/Documents/vimwiki")
    vim.cmd.e("index.md")
end

return M
