local M = {}

function M.render()
    if vim.bo.filetype == 'tex' then
        vim.cmd('!pdflatex --output-directory /tmp %')
    elseif vim.bo.filetype == 'vimwiki' then
        vim.cmd('!pandoc -t pdf -f markdown+lists_without_preceding_blankline -o /tmp/vout.pdf %')
    end
end

function M.open()
    if vim.bo.filetype == 'tex' then
        -- vim.cmd('!pdflatex --output-directory /tmp %<cr><cr>')
    elseif vim.bo.filetype == 'vimwiki' then
        vim.cmd('!pandoc -t pdf -f markdown+lists_without_preceding_blankline % | zathura - &')
    end
end

return M

