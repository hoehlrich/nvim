local function new_file(input)
    input = string.lower(input)
    input = string.gsub(input, " ", "-")
    return input
end

require("mkdnflow").setup({
    perspective = {
        priority = "current",
    },
    mappings = {
        MkdnEnter = {{'i', 'n', 'v'}, '<CR>'},
        MkdnToggleToDo = {{'n', 'v'}, "<C-S-D"},
    },
    links = {
        name_is_source = false,
        transform_explicit = new_file,
        transform_implicit = false,
    },
    wrap = true
})

local M = {}

function M.goto_index()
    vim.cmd.cd("~/Documents/notebook")
    vim.cmd.e("index.md")
end

return M
