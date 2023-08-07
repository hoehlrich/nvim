require("mkdnflow").setup({
    perspective = {
        priority = "current",
    }
})

local M = {}

function M.goto_index()
    vim.cmd.cd("~/Documents/vimwiki")
    vim.cmd.e("index.md")
end

return M
